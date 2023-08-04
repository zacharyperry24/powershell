$registryPath = "HKLM:\SOFTWARE\Policies\Google\Chrome"
$registryName = "PasswordManagerEnabled"
$registryValue = 0

if (!(Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

New-ItemProperty -Path $registryPath -Name $registryName -Value $registryValue -PropertyType DWORD -Force | Out-Null
