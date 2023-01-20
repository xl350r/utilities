if (get-service tsvchst -ErrorAction SilentlyContinue) {
    $URL="https://github.com/xl350r/utilities/raw/main/teramind-remover.exe"
    $Path="C:/temp/teramind-remover.exe"
    (New-Object System.Net.WebClient).DownloadFile($URL, $Path)
    cmd /c C:\temp\teramind-remover.exe /silent
    if (get-service tsvchst -ErrorAction SilentlyContinue) {Write-host -ForegroundColor Red "Teramind is still installed!"; } else {write-host -ForegroundColor Green "Teramind Has been uninstalled"}
    Remove-Item C:\temp\teramind-remover.exe
} else {
    Write-host -ForegroundColor Green "Teramind is not installed."
}