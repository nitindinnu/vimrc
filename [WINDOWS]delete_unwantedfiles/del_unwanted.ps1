# PowerShell commands
$items = Get-ChildItem -Path . -Include "work", "*.mpf","*qverilog.log", "*.vcd","*.vstf","*.mti", "*.wlf" ,"*.vhd" ,"*.dbg" ,"transcript" -Recurse

$items | ForEach-Object {
    $item = $_
    if ($item.PSIsContainer) {
        Write-Output "Folder: $($item.FullName)"
    } else {
        Write-Output "File: $($item.FullName)"
    }
}

$items | Remove-Item -Recurse -Force

# Completion message
Write-Output "Script completed successfully."

