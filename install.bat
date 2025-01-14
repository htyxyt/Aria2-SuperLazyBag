@echo off
fltmc > nul || (echo 请以管理员身份运行 & pause > nul & exit)
cd /d %~dp0

::安装aria2服务
aria2-winsw.exe install

::启动aria2服务
aria2-winsw.exe start

echo 执行完毕，按任意键退出...
pause > nul