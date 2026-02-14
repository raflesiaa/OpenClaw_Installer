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

# Check OS
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
else
    OS=$(uname -s)
fi

echo -e "${BLUE}[1/4]${RESET} Detecting System: ${GREEN}$OS${RESET}"

# 1. Update & Install Basic Tools
echo -e "\n${BLUE}[2/4]${RESET} Installing System Dependencies..."
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl git build-essential ffmpeg python3 pkg-config make g++ ca-certificates
echo -e "${GREEN}✔ System dependencies ready!${RESET}"

# 2. Install Node.js 22
echo -e "\n${BLUE}[3/4]${RESET} Installing Node.js 22 (LTS)..."
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs
echo -e "${GREEN}✔ Node.js $(node -v) installed!${RESET}"

# 3. Install OpenClaw (Pinned to v2026.2.12)
echo -e "\n${BLUE}[4/4]${RESET} Installing OpenClaw Core (v2026.2.12)..."
sudo npm install -g openclaw@2026.2.12
echo -e "${GREEN}✔ OpenClaw successfully installed!${RESET}"

# 4. Finish
echo -e "\n${GREEN}============================================${RESET}"
echo -e "${GREEN}      INSTALLATION PROCESS COMPLETED!       ${RESET}"
echo -e "${GREEN}============================================${RESET}"
echo -e "${YELLOW}Next steps:${RESET}"
echo -e "1. Setup Bot: ${CYAN}openclaw onboard${RESET}"
echo -e "2. Run Gateway: ${CYAN}openclaw gateway --verbose${RESET}"
echo ""
echo -e "${BLUE}Tip: Use 'screen' or 'pm2' to keep the process running in the background.${RESET}"
