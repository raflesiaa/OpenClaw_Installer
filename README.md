# 🦞 OpenClaw VPS/Local Installer

Professional automated script to install **OpenClaw** on any Linux VPS or Local PC (Ubuntu/Debian/WSL).

## ✨ Features
- 🚀 **Smart Detection**: Detects and installs/upgrades Node.js to v22 (LTS).
- 📦 **Stable Version**: Pinned to OpenClaw `2026.2.12`.
- 🛠 **Full Modules**: Automatically installs Chromium, FFmpeg, and Build Tools.
- 📱 **Multi-Channel**: Optimized for Telegram, WhatsApp, and Discord.

## 📥 Quick Installation

Run this single command in your terminal:

```bash
curl -sSL https://raw.githubusercontent.com/raflesiaa/OpenClaw_Installer/main/install_vps.sh | bash
```

---

## ⚙️ Step-by-Step Configuration

After installation, run the onboarding command:
```bash
openclaw onboard
```

Follow these exact steps to set up your bot:
1.  **Security Check**: Select `Yes` to acknowledge risks.
2.  **Mode**: Select `QuickStart`.
3.  **Config**: Select `Use existing values`.
4.  **AI Provider**: Select your provider and paste your API Key.
5.  **AI Model**: Select your preferred model.
6.  **Channel**: Select your preferred channel (**Telegram**, **WhatsApp**, or **Discord**).
7.  **Skills**: Select `No`.
8.  **Restart/Start**: Select `Yes`.

---

## 🤖 Channel Setup Tutorials

### 1. Telegram Bot
- Create a bot via **[@BotFather](https://t.me/BotFather)** to get your **Bot Token**.
- Get your **Owner ID** via **[@userinfobot](https://t.me/userinfobot)**.
- Input these during onboarding.

### 2. WhatsApp
- During onboarding, select **WhatsApp**.
- Start the gateway: `openclaw gateway`.
- Scan the **QR Code** that appears in your terminal using your phone.

### 3. Discord
- Create a Bot in the **[Discord Developer Portal](https://discord.com/developers/applications)**.
- Enable **Message Content Intent**.
- Copy your **Bot Token** and input it during onboarding.

---

### 🛑 Important: Preventing Auto-Start
During the onboarding process, after you select `Yes` to restart/start, OpenClaw will attempt to launch the gateway immediately.
- **To stop it**: Press **`Ctrl + C`** on your keyboard as soon as you see the gateway logs.
- **If it keeps running**: If you get an error saying the port is already in use, run this command to stop it manually:
  ```bash
  openclaw gateway stop
  ```

---

## 🛠 Start Your Bot
To start or restart your bot after it has been stopped, simply run:
```bash
openclaw gateway
```
*Tip: If you want to see detailed logs while it's running, you can add the `--verbose` flag.*

---
**Maintained by:** [Raflesia](https://github.com/raflesiaa)
