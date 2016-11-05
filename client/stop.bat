@Echo Off
TaskList|Findstr /i "ssh.exe">Nul
If ErrorLevel 1 (
  echo "SSH not started"
  ) Else (
  echo "Kill ssh"
  taskkill /F /IM ssh.exe
)