@Echo Off
TaskList|Findstr /i "ssh.exe">Nul
If ErrorLevel 1 (
  bin\chmod 600 id_rsa
  bin\run.exe /bin/autossh -M 7741 -N -D 127.0.0.1:1081 ubuntu@116.56.143.1 -i id_rsa
  ) Else (
  taskkill /F /IM ssh.exe
  bin\chmod 600 id_rsa
  bin\run.exe /bin/autossh -M 7741 -N -D 127.0.0.1:1081 ubuntu@116.56.143.1 -i id_rsa
)
