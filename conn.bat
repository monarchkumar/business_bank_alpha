@echo off
echo Connecting to Phone at 192.168.0.100
start "connect" /wait "C:\Users\monar\AppData\Local\Android\Sdk\platform-tools\adb.exe" connect 192.168.0.100
echo done!
