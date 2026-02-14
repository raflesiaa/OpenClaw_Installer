# 🦞 OpenClaw VPS/Local Installer

Professional automated script to install **OpenClaw** on any Linux VPS or Local PC (Ubuntu/Debian/WSL).

## ✨ Features
- 🚀 **Smart Detection**: Checks if Node.js is already installed (upgrades if version < 20).
- 📦 **Stable Version**: Pinned to OpenClaw `2026.2.12`.
- 🛠 **Full Modules**: Automatically installs FFmpeg, Python, Git, and Build Tools.
- 💻 **Universal**: Works on Ubuntu, Debian, and WSL2.

## 📥 Quick Installation

Run this single command in your terminal:

```bash
curl -sSL https://raw.githubusercontent.com/raflesiaa/OpenClaw_Installer/main/install_vps.sh | bash
```

---

## ⚙️ Step-by-Step Configuration

Once the installation is finished, follow these steps to set up your bot:

### 1. Create your Telegram Bot
- Open Telegram and chat with **[@BotFather](https://t.me/BotFather)**.
- Use the `/newbot` command.
- Save the **API Token** (looks like `123456:ABC-DEF...`).
- Get your **Owner ID** by messaging **[@userinfobot](https://t.me/userinfobot)**.

### 2. Run Onboarding
Run the following command to link your AI provider and Telegram:
```bash
openclaw onboard
```
- **Select Provider**: Choose your AI (OpenAI, Google, Anthropic, or Jatevo).
- **API Key**: Paste your AI provider's API key.
- **Select Channel**: Choose **Telegram**.
- **Telegram Token**: Paste the token from BotFather.
- **Admin ID**: Paste your ID from userinfobot.

### 3. Start the Gateway
Launch your OpenClaw service:
```bash
openclaw gateway
```

### 4. Pairing & Verification
- Send a message like "Hello" to your new bot on Telegram.
- The bot will reply with a **Pairing Code**.
- Approve the session in your terminal:
  ```bash
  openclaw pairing approve telegram <CODE>
  ```
- Your bot is now linked and ready! 🚀

## 🛠 Manual Installation
If you prefer to clone the repo:
```bash
git clone https://github.com/raflesiaa/OpenClaw_Installer
cd OpenClaw_Installer
chmod +x install_vps.sh
./install_vps.sh
```

---
**Maintained by:** [Raflesia](https://github.com/raflesiaa)
