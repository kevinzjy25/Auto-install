# Auto-install-A useful installer 

>**video:**
>
>bilibili:
>
>youtube:

![image](image/Snipaste_2023-09-23_10-10-52.png)

![image](image/Snipaste_2023-09-23_10-11-23.png)

### Code description：

First,the programming language used in this script is Batch. The main reason for using this language is that the necessary environment for languages ​​such as Python is not installed on most computers that need to be installed. Batch is already built into the windows system.

Second,this script has three execution modes:
1.Basic installation,that is, only some basic software is installed. This mode is mainly used for installation on computers that are only used for a short period of time. Specifically, for example, if the laptop's power is not enough to continue using it when you are out, and you need to use someone else's computer to continue working,and then you can use this script.But this mode only installs a few basic software：bandzip,microsoft365,potplayer.

2.Full installation，that is to say, all the software on my current computer will be installed on the target computer, except for some software that is limited by hardware. (For specific software, please refer to the notice)

3.Custom installation，that is, only the software you entered will be installed. After completing the installation once, you can enter the software you need to install again. When you enter quit, the installation can be completed.

### Code comments：

![image](image/Snipaste_2023-09-23_10-19-44.png)

>Turn off automatic return (printing)
>
>Set the Chinese code page to ensure that the display will not be garbled. '65001' is the language number of Simplified Chinese.
>
>Set the variable 'disk' and read the input.'请选择KZ-main的所属盘符' is used to prompt the user what content needs to be entered.‘KZ-main’ is the drive letter where my installation script is located. You can change it according to your own situation.
>
>Switch to the drive letter of the variable disk.For example,you just entered 'D'，then it will locate the D drive.
>
>Go to the \autoinstall\clash directory，and run Clash (a vpn) to ensure that mainland China can also use this script smoothly.(But you need to have a subscription link）
>
>Go to the \autoinstall directory
>
>Set another variable 'type'and read input.Following are instructions for selecting the installation mode.----选择安装模式(1:基本安装(potplayer、bandzip、office、alist、clash、截图工具),2:完全安装(1中的、钉钉,微信、苹果桌面、生产力工具、工具),3:个性化安装)
>
>When the input value of type is 1, jump to the 'setup_1' label,enter 2 to jump to 'setup_2',enter 3 to jump to 'setup_3'

![image](image/Snipaste_2023-09-23_11-38-02.png)
>
>Go to the \autoinstall\wget-1.21.4-win64 directory
>
>Use the 'wget' command to download each software installation file from the following link,and then run these installation.
>
>Set a variable 'disk1' and read the input and then use 'xcopy' command to copy snipaste to the target drive.
>
>Jump to the 'final' label.
>
>print '安装完成,请重启电脑(截图工具目录：%disk1%:\snipaste)' and '如有软件未安装,可使用自定义安装(个别软件需破解请手动安装)'

![image](image/Snipaste_2023-10-05_19-56-40.png)



>Go to the \autoinstall\wget-1.21.4-win64 directory
>
>Use the 'wget' command to download each software installation file from the following link,and then run these installation.(Since the commands here are relatively similar, they have been omitted. The complete link is in the main script.).Then it will rename it to the right name.
>
>Then jump to the 'setup_1' label to install the basic software.

![image](image/Snipaste_2023-10-05_19-58-54.png)

>Go to the \autoinstall\wget-1.21.4-win64 directory
>
>Use the 'wget' command to download 'readma.txt' from github
>
>Print '请选择需安装的软件,输入对应的代码，具体参考readme.txt，quit跳转至最后--'
>
>Set a 'loop' tag:set a variable 'choose' and read input. If this variable's is 'quit',it'll jump to 'final' label,when we enter the software name instead of 'quit', we will use the wget command to download the software corresponding to the content we entered from github.For example,we type dingtalk(EU2zkyEWAwZEgtQC1h8Td04BG_fpFbT3PUc5LGuYd7LZXA?e=q4PZ8g),it'll wget https://vy1sv-my.sharepoint.com/:u:/g/personal/kevinzjy_vy1sv_onmicrosoft_com/EU2zkyEWAwZEgtQC1h8Td04BG_fpFbT3PUc5LGuYd7LZXA?e=q4PZ8g&download=1.You need to choose the file properties Then it will rename it 
 to 'name'.'file properties'.After that it will perform the above process again and again until you type 'quit'.

![image](image/Snipaste_2023-09-24_15-22-34.png)

>Print  '安装完成，如有问题可发送邮件至kevinzjy5@gmail.com'
>
>set a variable 'restart_type' and read input
>
>If the variable input is '1',it will restart the computer in 60 seconds and pop-up window '安装完成,将在一分钟后重启' and end the script.
>
>If the variable input is '2',it will end the script directly.

## Notice：

1.Software that will not be installed in a full installation due to high hardware requirements：davinci reslove,matlab,KSP,FSX,Liftoff.

2.Fully install the software that will be installed:
dingtalk,
wechat,
fushion360,
obsstudio,
edgecanary,
xmind,
tecentmeeting,
vscode,
arduino,
openrocket,
stmcubeide,
mind+,
keyshout,
capcut,
bcuninstaller,
vmware,
xiangrikui,
mortix,
windynamic,
baidunetdisk,
freerouting,
pycharm,
lasercad,
rufus,
diskgenius,
wireshark,
asssd,memreduct.

3.If you have any questions, you can send emails to:kevinzjy5@gmail.com.


