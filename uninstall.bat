@echo off
fltmc > nul || (echo ���Թ���Ա������� & pause > nul & exit)
cd /d %~dp0

::ֹͣaria2����
aria2-winsw.exe stop

::ɾ��aria2����
aria2-winsw.exe uninstall


::ɾ����װĿ¼
set current_dir="%~dp0"
cd ..
echo ��ɾ����ǰĿ¼����������������رմ�����ȡ��
pause > nul
rmdir /Q /S %current_dir% & echo ж����ϣ���������˳� & pause > nul & exit