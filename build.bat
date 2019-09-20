@echo off
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set ip=%%a
docker build -t docker-code --build-arg disp=%ip%:0.0 .
