# Multi-Rescue-USB-Pro-2026
une clé USB bootable contenant :      Tiny11 (Windows ultra‑léger)      et Linux Mint XFCE (léger, stable, parfait pour le dépannage)      + un pack d’outils AdminSys      + un thème circuit board pour rester dans ton branding      + un menu de démarrage propre
<p align="center">
  <img src="https://github.com/webmasterdu63-creator/MultiRescue-USB-Pro-2026/blob/main/USB2026.jpg " width="200" alt="MultiRescue USB Pro 2026 Logo">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Year-2026-blue" alt="Year">
  <img src="https://img.shields.io/badge/OS%20Support-Windows%20%7C%20Linux%20%7C%20macOS-lightgrey" alt="OS Support">
  <img src="https://img.shields.io/badge/Type-Bootable%20USB-red" alt="Bootable USB">
  <img src="https://img.shields.io/badge/Function-Recovery%20%26%20Repair-orange" alt="Function">
</p>

## 🎨 Theme & UI
This project uses the **Earth and Moon** GRUB theme.
* **Theme Repository**: [Lien vers TON fork ici]
* **Installation**: Copy the content of the theme repository into `/ventoy/theme/earth-moon/` on your USB drive.

## 🚀 About MultiRescue-USB-Pro-2026
**MultiRescue-USB-Pro-2026** is the ultimate bootable USB toolkit designed for system recovery, diagnostics, and repair across Windows, Linux, and macOS environments. This project aims to provide a comprehensive, all-in-one solution for IT professionals and power users.
## 📖 Overview
The **MultiRescue-USB-Pro-2026** is a high-performance, multiboot recovery toolkit designed specifically for **TSSR (Technicien Supérieur Systèmes et Réseaux)** professionals. Powered by **Ventoy**, it provides a seamless interface to deploy OS installers, live rescue environments, and a comprehensive portable toolkit for Windows & Linux.

## 🗂️ Drive Architecture
```text
USB_ROOT/
├── ventoy/         # Bootloader configuration & themes
├── iso/            # Operating System ISOs
│   ├── tiny11-rescue.iso
│   └── linux-mint-xfce.iso
├── tools/          # Portable applications
│   ├── windows/    # Security, Network, Disk tools
│   └── linux/      # Scripts, Forensic, Admin tools
└── backgrounds/    # CircuitBoard branding assets
🚀 Included Environments

    Tiny11 Rescue Edition: A stripped-down, ultra-fast Windows environment for system repair.

    Linux Mint XFCE: Lightweight and stable for network auditing and data recovery.

    Custom Toolkits: Over 30+ portable utilities for malware removal, hardware diagnostics, and disk management.

🔧 Deployment

    Prepare Drive: Install Ventoy to your USB drive (GPT recommended).

    Copy ISOs: Move your .iso files to the /iso folder.

    Add Tools: Populate the /tools directory with your favorite portable apps.

    Branding: Apply the CircuitBoard / TSSR Edition 2026 theme in ventoy.json.

💻 Automation Scripts

The drive includes pre-configured scripts for rapid intervention:

    autorun.ps1: Automated Windows system diagnostic.

    rescue.sh: Auto-mount partitions and Windows password reset via Linux.


