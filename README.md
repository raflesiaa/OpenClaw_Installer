# 🦞 OpenClaw VPS/Local Installer

This repository provides a professional automated script to install **OpenClaw** on any Linux VPS or Local PC (Ubuntu/Debian/WSL). This installer uses the stable version **2026.2.12** for the best user experience.

## ✨ Features
- 🚀 **Lightning Fast**: Full setup in under 2 minutes.
- 📦 **Stable Version**: Pinned to OpenClaw `2026.2.12` to ensure consistent behavior.
- 🛠 **Full Stack**: Automatically installs Node.js 22, FFmpeg, and Python.
- 💻 **Universal**: Works on Local PC (Linux/WSL) and cloud VPS (Ubuntu/Debian).

## 📥 Quick Installation

Run the following command in your terminal:

```bash
curl -sSL https://raw.githubusercontent.com/raflesiaa/OpenClaw_Installer/main/install_vps.sh | bash
```

Alternatively, you can clone the repository:

```bash
git clone https://github.com/raflesiaa/OpenClaw_Installer
cd OpenClaw_Installer
chmod +x install_vps.sh
./install_vps.sh
```

## 🤖 Configuration

After the installation is complete, follow these steps:

1. **Setup**: Run `openclaw onboard` to configure your AI provider and Telegram bot.
2. **Start**: Run `openclaw gateway --verbose` to launch the service.
3. **Pairing**: If using Telegram, chat with your bot to receive a pairing code, then approve it with:
   ```bash
   openclaw pairing approve telegram <YOUR_CODE>
   ```

## 📌 Requirements
- OS: Ubuntu 20.04+ / Debian 11+ / WSL2
- Minimum 1GB RAM recommended.

---
**Maintained by:** [Raflesia](https://github.com/raflesiaa)
