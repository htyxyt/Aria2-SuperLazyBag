@echo off
fltmc > nul || (echo ���Թ���Ա������� & pause > nul & exit)
cd /d %~dp0

::��װaria2����
aria2-winsw.exe install

::����aria2����
aria2-winsw.exe start

echo ִ����ϣ���������˳�...
pause > nul