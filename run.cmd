@ECHO off
TITLE Village SOPIMC Server

:start
java -jar serverstarter-2.0.1.jar

:backup
git add world/
git add run.cmd
git commit -m "Server Save on %date% at %time%"
git push

:reboot
echo Server is currently off!
echo Press any key to restart the server.
pause >nul
goto :start