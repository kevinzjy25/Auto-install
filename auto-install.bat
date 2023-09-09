@echo off
CHCP 65001
alist.exe server
set /p type= 选择安装模式(1:基本安装(potplayer、bandzip、office、alist、clash、截图工具),2:完全安装(1中的、钉钉,微信、苹果桌面、生产力工具、工具),3:个性化安装)--
if "%type%"=="1" goto setup_1
goto restart
if "%type%"=="2" goto setup_1
goto setup_2
goto restart
if "%type%"=="3" goto setup_3
goto restart
:setup_1

set /p disk= 请选择KZ-main的所属盘符
%disk%:
cd %disk%:\autoinstall\clash\clash.exe
cd %disk%:\autoinstall\wget-1.21.4-win64
wget https://github.com/kevinzjy25/Auto-install/tree/main/installer/potplayer.exe
wget https://github.com/kevinzjy25/Auto-install/tree/main/installer/bandzip.exe
wget https://github.com/kevinzjy25/Auto-install/tree/main/installer/office365.exe
potplayer.exe
bandzip.exe
office365.exe
set /p disk1= 请选择存在的除C盘外的一个盘符
%disk1%:
Xcopy %disk%:\autoinstall\snipaste %disk1%:\snipaste /E/H
echo 安装完成,请重启电脑(截图工具目录：%disk1%:\snipaste)
goto final
:setup_2
set /p disk= 请选择KZ-main的所属盘符
%disk%:
cd %disk%:\autoinstall\clash\clash.exe
cd %disk%:\autoinstall\wget-1.21.4-win64
goto final
:setup_3
set /p disk= 请选择KZ-main的所属盘符
%disk%:
cd %disk%:\autoinstall\clash\clash.exe
cd %disk%:\autoinstall\wget-1.21.4-win64
wget https://github.com/kevinzjy25/Auto-install/tree/main/installer/readme.txt
set \p choice3= 请选择需安装的软件,直接输入软件名称，具体参考readme.txt，skip跳转至最后--
wget https://github.com/kevinzjy25/Auto-install/tree/main/installer/%choice3%.exe

echo 如有软件未安装,可使用自定义安装(个别软件需破解请手动安装)
goto final
:final
echo 如有问题可发送邮件至kevinzjy5@126.com
set /p restart_type= 是否重启(1.重启,2. 不重启)--
if "%restart_type%"=="1" shutdown -r -t 60 -c "安装完成,将在一分钟后重启"
goto end
if "%restartype%"=="2" goto end
:end
pause
