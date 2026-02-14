#!/bin/bash
# ================================================
#  OpenClaw VPS/Local Installer (Stable Edition)
#  Project: OpenClaw_Installer
#  Author: Raflesia
# ================================================

set -Eeuo pipefail

# Colors
BLUE="\033[1;34m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
MAGENTA="\033[1;35m"
RESET="\033[0m"

echo -e "${MAGENTA}"
echo "   ____                      ____ _                 "
echo "  / __ \ ____   ___   ____  / ___| | __ _ __      __"
echo " / / / // __ \ / _ \ / __ \| |   | |/ _` |\ \ /\ / /"
echo "/ /_/ // /_/ //  __// / / /| |___| | (_| | \ V  V / "
echo "\____// .___/ \___//_/ /_/  \____|_|\__,_|  \_/\_/  "
echo "     /_/                                            "
echo -e "${RESET}"

echo -e "${CYAN}============================================${RESET}"
echo -e "${CYAN}      OPENCLAW VPS/LOCAL AUTO-INSTALLER     ${RESET}"
echo -e "${CYAN}============================================${RESET}"

# 1. Update & Install Basic Tools
echo -e "\n${BLUE}[1/4]${RESET} Checking System Dependencies..."
sudo apt update -y
sudo apt install -y curl git build-essential ffmpeg python3 pkg-config make g++ ca-certificates
echo -e "${GREEN}✔ System dependencies ready!${RESET}"

# 2. Check Node.js
echo -e "\n${BLUE}[2/4]${RESET} Checking Node.js Environment..."
if command -v node > /dev/null 2>&1; then
    NODE_VER=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
    if [ "$NODE_VER" -ge 20 ]; then
        echo -e "${GREEN}✔ Node.js $(node -v) is already installed.${RESET}"
    else
        echo -e "${YELLOW}[WARN] Node.js version is too old ($NODE_VER). Upgrading to v22...${RESET}"
        curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
        sudo apt install -y nodejs
    fi
else
    echo -e "${YELLOW}[INFO] Node.js not found. Installing v22 (LTS)...${RESET}"
    curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
    sudo apt install -y nodejs
fi
echo -e "${GREEN}✔ Node.js ready!${RESET}"

# 3. Install OpenClaw (Pinned to v2026.2.12)
echo -e "\n${BLUE}[3/4]${RESET} Installing OpenClaw Core (v2026.2.12)..."
sudo npm install -g openclaw@2026.2.12
echo -e "${GREEN}✔ OpenClaw successfully installed!${RESET}"

# 4. Finish
echo -e "\n${GREEN}============================================${RESET}"
echo -e "${GREEN}      INSTALLATION PROCESS COMPLETED!       ${RESET}"
echo -e "${GREEN}============================================${RESET}"
echo -e "${YELLOW}Next steps to get started:${RESET}"
echo -e "1. Configure: ${CYAN}openclaw onboard${RESET}"
echo -e "2. Run:       ${CYAN}openclaw gateway --verbose${RESET}"
echo ""
echo -e "${BLUE}Tip: Follow the guide in README.md for full Telegram Bot setup!${RESET}"
