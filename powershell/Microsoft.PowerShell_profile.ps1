# Custom Prompt
Import-Module oh-my-posh
$omp_config_path = Join-Path $HOME ".\Documents\PowerShell\rykhlyk.omp.json"
oh-my-posh init pwsh --config $omp_config_path | Invoke-Expression

# File and folder icons
Import-Module -Name Terminal-Icons
