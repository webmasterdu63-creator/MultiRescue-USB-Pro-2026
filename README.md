# Multi-Rescue-USB-Pro-2026
une clé USB bootable contenant :      Tiny11 (Windows ultra‑léger)      et Linux Mint XFCE (léger, stable, parfait pour le dépannage)      + un pack d’outils AdminSys      + un thème circuit board pour rester dans ton branding      + un menu de démarrage propre NOTE : CLE USB 3 32GB Recommandé ! USB 3 32GB Key Required !
<p align="center">
  <img src="https://github.com/webmasterdu63-creator/MultiRescue-USB-Pro-2026/blob/main/USB2026.jpg " width="200" alt="MultiRescue USB Pro 2026 Logo">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Year-2026-blue" alt="Year">
  <img src="https://img.shields.io/badge/OS%20Support-Windows%20%7C%20Linux%20%7C%20macOS-lightgrey" alt="OS Support">
  <img src="https://img.shields.io/badge/Type-Bootable%20USB-red" alt="Bootable USB">
  <img src="https://img.shields.io/badge/Function-Recovery%20%26%20Repair-orange" alt="Function">
</p>
🔗 Téléchargements officiels

    Tiny11 : https://tiny11builder.github.io (tiny11builder.github.io in Bing)

    Linux Mint XFCE : https://linuxmint.com/download.php (linuxmint.com in Bing)
    /iso/
   tiny11-rescue.iso
   
   linux-mint-xfce.iso

🛠️ MultiRescue USB Pro 2026
La clé ultime du technicien TSSR

MultiRescue USB Pro 2026 est une clé USB multiboot professionnelle conçue pour les techniciens systèmes & réseaux, les administrateurs et les intervenants terrain.
Elle combine légèreté, rapidité, automatisation et outils d’analyse avancés, le tout dans une interface personnalisée CircuitBoard TSSR Edition 2026.
🔧 Contenu de la clé

    Tiny11 Rescue — Windows ultra‑léger pour interventions rapides

    Linux Mint XFCE — Environnement stable, complet et idéal pour le dépannage

    Pack d’outils AdminSys — Réseau, stockage, sécurité, récupération

    Scripts d’automatisation

        autorun.ps1 → diagnostic Windows instantané

        rescue.sh → reset mot de passe + montage partitions

    Menu Ventoy personnalisé — Thème circuit board + navigation claire

🎯 Objectif

Offrir au technicien TSSR une solution portable, fiable et complète, capable de répondre à 95 % des situations de dépannage :

    PC bloqué

    Réinitialisation utilisateur

    Analyse réseau

    Récupération de données

    Vérification système

    Intervention sur site
💻 Hardware Requirements / Spécifications Matérielles

Pour profiter pleinement de la MultiRescue-USB-Pro-2026, le choix du support physique est crucial :

    Recommandé : Clé USB 3.0 / 3.1 / 3.2 (Type-A ou Type-C).

    Capacité minimale : 32 Go (pour accueillir Tiny11, Linux Mint et le pack d'outils).

    Formatage : GPT (pour une compatibilité maximale avec les bios UEFI modernes).

    Note : L'utilisation de supports USB 2.0 est fortement déconseillée. Les temps de chargement des ISO et l'exécution des outils 
    portables seraient considérablement ralentis, impactant l'efficacité de vos dépannages.

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

🇬🇧 English Version: MultiRescue USB Pro 2026

The ultimate multiboot toolkit for IT Technicians & Systems Administrators.
📖 Overview

MultiRescue USB Pro 2026 is a professional-grade, multiboot recovery drive designed for field interventions,
system diagnostics, and network auditing. Powered by Ventoy, it provides a high-performance interface to deploy
lightweight OS environments and a comprehensive portable toolkit.
🔧 Included Environments

    Tiny11 Rescue Edition: A stripped-down, ultra-fast Windows environment for rapid system repair.

    Linux Mint XFCE: A stable, lightweight environment perfect for network auditing and data recovery.

    Hiren’s BootCD: The legendary Swiss Army knife for PC troubleshooting.

🛠️ Key Features

    Custom TSSR Interface: Professional "CircuitBoard" theme for a clean, branded boot experience.

    Automation Scripts:

        autorun.ps1: Instant Windows system diagnostics.

        rescue.sh: Automated partition mounting and password reset via Linux.

    AdminSys Toolpack: Pre-loaded with 30+ portable utilities for hardware testing, malware removal, and disk management.

🚀 Deployment Instructions

    Prepare Drive: Install Ventoy to your USB drive (GPT recommended).

    Add ISOs: Place your .iso files into the /iso/ folder.

    Apply Branding: Copy the theme files to /ventoy/themes/ and update your ventoy.json.

