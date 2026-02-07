#!/bin/bash

# --- MultiRescue-USB-Pro-2026 ---
# Script de récupération : Montage NTFS & Reset Password
# ---------------------------------------

echo "------------------------------------------"
echo "   TSSR RESCUE TOOL - EDITION 2026        "
echo "------------------------------------------"

# 1. Vérification des droits root
if [ "$EUID" -ne 0 ]; then 
  echo "Erreur : Ce script doit être lancé en root (sudo)."
  exit
fi

# 2. Détection des partitions Windows (NTFS)
echo "[*] Recherche de partitions Windows..."
PARTITIONS=$(lsblk -pno NAME,FSTYPE | grep "ntfs" | awk '{print $1}')

if [ -z "$PARTITIONS" ]; then
    echo "[!] Aucune partition NTFS détectée."
    exit 1
fi

echo "Partitions trouvées :"
select PART in $PARTITIONS; do
    MOUNT_POINT="/mnt/windows_rescue"
    mkdir -p $MOUNT_POINT
    
    # 3. Montage de la partition
    echo "[*] Montage de $PART sur $MOUNT_POINT..."
    mount -t ntfs-3g -o rw,force $PART $MOUNT_POINT
    
    if [ $? -eq 0 ]; then
        echo "[OK] Partition montée avec succès."
        
        # 4. Option : Reset mot de passe avec chntpw
        echo "------------------------------------------"
        echo "1) Réinitialiser un mot de passe (SAM)"
        echo "2) Explorer les fichiers (Lecture/Écriture)"
        echo "3) Démonter et quitter"
        read -p "Choix : " OPT
        
        case $OPT in
            1)
                cd "$MOUNT_POINT/Windows/System32/config"
                chntpw -i SAM
                ;;
            2)
                echo "Fichiers accessibles dans $MOUNT_POINT"
                ls -F $MOUNT_POINT
                bash # Ouvre un terminal dans l'environnement
                ;;
            3)
                umount $MOUNT_POINT
                echo "[*] Partition démontée."
                exit 0
                ;;
        esac
    else
        echo "[!] Échec du montage. Windows est peut-être en mode 'Fast Startup'."
    fi
    break
done
