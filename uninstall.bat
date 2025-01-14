@echo off
fltmc > nul || (echo 请以管理员身份运行 & pause > nul & exit)
cd /d %~dp0

::停止aria2服务
aria2-winsw.exe stop

::删除aria2服务
aria2-winsw.exe uninstall


::删除安装目录
set current_dir="%~dp0"
cd ..
echo 将删除当前目录，按任意键继续，关闭窗口则取消
pause > nul
rmdir /Q /S %current_dir% & echo 卸载完毕，按任意键退出 & pause > nul & exit