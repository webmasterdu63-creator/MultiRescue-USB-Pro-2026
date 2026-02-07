# --- MultiRescue-USB-Pro-2026 ---
# Script de Diagnostic Automatique Windows (TSSR Edition)
# -------------------------------------------------------

$ErrorActionPreference = "SilentlyContinue"
$reportPath = "$PSScriptRoot\Diagnostic_Report.txt"

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   TSSR AUTOMATED DIAGNOSTIC v2026.1     " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# 1. Vérification des privilèges Administrateur
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "[!] Erreur : Relancez PowerShell en tant qu'Administrateur." -ForegroundColor Red
    exit
}

# Fonction pour ajouter au rapport
function Add-ToReport ($title, $content) {
    "--- $title ---" | Out-File -FilePath $reportPath -Append
    $content | Out-File -FilePath $reportPath -Append
    " " | Out-File -FilePath $reportPath -Append
}

# Effacer l'ancien rapport
if (Test-Path $reportPath) { Remove-Item $reportPath }

# 2. Informations Système & Matériel
Write-Host "[*] Analyse du matériel..." -ForegroundColor Yellow
$os = Get-CimInstance Win32_Operating System | Select-Object Caption, Version, OSArchitecture
$cpu = Get-CimInstance Win32_Processor | Select-Object Name
$ram = [Math]::Round((Get-CimInstance Win32_PhysicalMemory | Measure-Object Capacity -Sum).Sum / 1GB, 2)

Add-ToReport "Système" $os
Add-ToReport "Processeur" $cpu
Add-ToReport "RAM" "$ram GB"

# 3. État de Santé des Disques (S.M.A.R.T)
Write-Host "[*] Vérification des disques..." -ForegroundColor Yellow
$disks = Get-PhysicalDisk | Select-Object DeviceID, FriendlyName, HealthStatus, OperationalStatus
Add-ToReport "Santé des Disques" $disks

# 4. Configuration Réseau
Write-Host "[*] Test de la connectivité réseau..." -ForegroundColor Yellow
$ip = Get-NetIPAddress -AddressFamily IPv4 | Where-Object InterfaceAlias -NotLike "*Loopback*" | Select-Object InterfaceAlias, IPAddress
$ping = Test-Connection -ComputerName 8.8.8.8 -Count 2 -Quiet
Add-ToReport "Configuration IP" $ip
Add-ToReport "Accès Internet" (If ($ping) {"Connecté"} Else {"Déconnecté"})

# 5. Erreurs Critiques (Dernières 24h)
Write-Host "[*] Analyse des journaux d'erreurs..." -ForegroundColor Yellow
$events = Get-EventLog -LogName System -EntryType Error -After (Get-Date).AddDays(-1) | Select-Object -First 5 Message
Add-ToReport "Erreurs Système (24h)" $events

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "[OK] Diagnostic terminé !" -ForegroundColor Green
Write-Host "[i] Rapport généré : $reportPath" -ForegroundColor White
