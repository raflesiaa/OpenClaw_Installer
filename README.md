# 🦞 OpenClaw VPS/Local Installer

Professional automated script to install **OpenClaw** on any Linux VPS or Local PC (Ubuntu/Debian/WSL).

## ✨ Features
- 🚀 **Full Browser Support**: Automatically installs Chromium and its system dependencies for web research.
- 📦 **Stable Version**: Pinned to OpenClaw `2026.2.12`.
- 🛠 **Smart Detection**: Detects and installs/upgrades Node.js to v22 (LTS).
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
3.  **Config**: Select `Use existing values` (if prompted).
4.  **AI Provider**: Select your provider (OpenAI, Google, Anthropic, or Jatevo) and paste your API Key.
5.  **AI Model**: Select your preferred model.
6.  **Channel**: Select your preferred channel (**Telegram**, **WhatsApp**, or **Discord**).
7.  **Skills**: Select `No` (you can configure skills later).
8.  **Restart**: Select `Yes` to apply changes.
9.  **Others**: Keep everything else as `Default`.

---

## 🤖 Channel Setup Tutorials

### 1. Telegram Bot
- Create a bot via **[@BotFather](https://t.me/BotFather)** to get your **Bot Token**.
- Get your **Owner ID** via **[@userinfobot](https://t.me/userinfobot)**.
- Input these during `openclaw onboard`.

### 2. WhatsApp
- During `openclaw onboard`, select **WhatsApp**.
- Start the gateway: `openclaw gateway`.
- A **QR Code** will appear in your terminal.
- Open WhatsApp on your phone -> Linked Devices -> **Link a Device** and scan the QR code.
- *Note: We recommend using a dedicated number/eSIM for your bot.*

### 3. Discord
- Go to the **[Discord Developer Portal](https://discord.com/developers/applications)**.
- Create a "New Application" and go to the "Bot" tab.
- Copy your **Bot Token**.
- Enable "Message Content Intent" under the Privileged Gateway Intents section.
- Input the token during `openclaw onboard`.

---

## 🛠 Start Your Bot
After configuration, simply run:
```bash
openclaw gateway
```

If you receive a **Pairing Code** on your chat channel, approve it in the terminal with:
```bash
openclaw pairing approve <channel> <CODE>
```

---
**Maintained by:** [Raflesia](https://github.com/raflesiaa)
