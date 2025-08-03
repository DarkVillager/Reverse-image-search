Write-Host(@'

_____    _____    _____ 
|  __ \  |_   _|  / ____|
| |__) |   | |   | (___  
|  _  /    | |    \___ \ 
| | \ \   _| |_   ____) |
|_|  \_\ |_____| |_____/ 
                                                

'@)

Install-Module 'PsMenu'
Import-Module 'PsMenu'

$baseYandex = 'https://yandex.com/images/search?source=collections&rpt=imageview&url='
$baseTineye = 'https://tineye.com/search?url='

$img = Read-Host -Prompt 'IMG URL: '

$choice = Show-Menu @('Chrome', 'Firefox', 'Edge')

if ($choice -eq 'Chrome') {
    Start-Process -FilePath 'C:\Program Files\Google\Chrome\Application\chrome.exe' -ArgumentList "$baseYandex$img"
    Start-Process -FilePath 'C:\Program Files\Google\Chrome\Application\chrome.exe' -ArgumentList "$baseTineye$img"
}
elseif ($choice -eq 'Firefox') {
    Start-Process -FilePath 'C:\Program Files\Mozilla Firefox\firefox.exe' -ArgumentList "$baseYandex$img"
    Start-Process -FilePath 'C:\Program Files\Mozilla Firefox\firefox.exe' -ArgumentList "$baseTineye$img"
}
else {
    Start-Process -FilePath 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe' -ArgumentList "$baseYandex$img"
    Start-Process -FilePath 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe' -ArgumentList "$baseTineye$img"
}

Write-Host(@'

_____    _____    _____ 
|  __ \  |_   _|  / ____|
| |__) |   | |   | (___  
|  _  /    | |    \___ \ 
| | \ \   _| |_   ____) |
|_|  \_\ |_____| |_____/ 
                                                

'@)
