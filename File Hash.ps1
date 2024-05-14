function Open-CmdPrompt {
    param (
        [string]$Text
    )
    $wshell = New-Object -ComObject wscript.shell
    $wshell.Popup($Text, 0, "SHA-256 Value", 0x40 + 0x40000)
}
Get-FileHash Get-FileHash -Path %1 | ForEach-Object { Open-CmdPrompt $_.Hash }; Read-Host -Prompt 'Press any key to continue...'"


