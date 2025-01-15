# Aria2 超·懒人包使用指南

## 介绍

Aria2 超·懒人包，一键配置Aria2。注册Aria2后台进程为系统服务，让Aria2以Windows系统服务的方式自动运行。没有cmd窗口，方便进程管理，开机后无需用户登录即可自启动。

![image](https://github.com/user-attachments/assets/ecaa55f2-636c-4a09-bdc6-e84654c007f9)

## 使用方法

### 安装

1. 解压目录下的 `Aria2.zip`，并将解压后的文件夹 `Aria2` 复制到想要安装的位置。
2. 右键以管理员模式运行 `install.bat`，等待脚本执行完毕，`aria2` 服务即安装成功。
3. 在任务管理器的“详细信息”中，查看“服务”部分，可以看到 `aria2` 服务正在运行。
4. `aria2` 管理界面可以使用网页版 `AriaNg`（位于 `AriaNg-1.3.8-AllInOne` 文件夹下的 `html` 文件），或浏览器插件 `Aria2 Explorer` 等。

### 卸载

1. 右键以管理员模式运行 `uninstall.bat`，等待脚本执行完毕，`aria2` 服务即卸载成功。
2. 可根据需要选择是否清除 `Aria2` 文件夹，也可以手动删除。

## 程序修改

### aria2 主程序更新

1. `aria2c.exe` 的官方程序下载地址见参考资料2，而本懒人包采用的是解除单服务器线程数限制编译版，见参考资料3。
（注意：如果打算更换为官方版，本懒人包配置文件的部分设置可能会不兼容，要把配置文件也一起换掉）
2. 在任务管理器的“详细信息”中，选中 `aria2` 服务，右键停止。
3. 下载相应版本的 `aria2c.exe` 文件，覆盖 `Aria2` 目录下的文件即可。
4. 在任务管理器的“详细信息”中，选中 `aria2` 服务，右键开始。

### AriaNg 界面更新

1. 下载地址见参考资料4。
2. 下载相应版本的 `AriaNg` 压缩包（推荐 `AllInOne.zip` 即单文件版），解压后用浏览器打开 `html` 文件即可。
3. 若使用浏览器插件来管理 `aria2`，则不需要更新它。

### 编辑 Aria2 配置

1. 若有需求，打开并修改 `Aria2` 目录下的 `aria2.conf` 文件即可，具体参数可见参考资料5、参考资料6。
2. 在任务管理器的“详细信息”中，选中 `aria2` 服务，右键重新启动。

### 编辑 winsw 配置

1. 若有需求，打开并修改 `Aria2` 目录下的 `aria2-winsw.xml` 文件即可，具体参数可见参考资料7、参考资料8。
2. 在任务管理器的“详细信息”中，选中 `aria2` 服务，右键重新启动。

### trackers 更新

1. `trackers` 服务器地址可见参考资料9。
2. 手动更新：打开并修改 `Aria2` 目录下的 `aria2.conf` 文件，在 `bt-tracker=` 后添加 `trackers` 服务器地址，用逗号分隔。

   自动更新：选中 `Aria2` 目录下的 `RenewTrackers.ps1` 文件，右键使用 `PowerShell` 运行。
4. 在任务管理器的“详细信息”中，选中 `aria2` 服务，右键重新启动。

## 下载功能

1. 可配合 `Aria2 Explorer` 浏览器插件，接管 HTTP 下载。
2. 可配合参考资料10里的脚本，直链下载网盘文件，使用方法见网页。
3. 可添加磁链或种子，进行 BT 下载。

## 参考资料

1. [Aria2 - 超·懒人包（2018.11.19 更新）](https://meta.appinn.net/t/aria2-2018-11-19/7434)
2. [aria2 - The ultra fast download utility](https://github.com/aria2/aria2)
3. [aria2 build scripts on msys2 with custom patches](https://github.com/myfreeer/aria2-build-msys2)
4. [AriaNg](https://github.com/mayswind/AriaNg)
5. [关于aria2最完整的一篇](http://ivo-wang.github.io/2019/04/18/%E5%85%B3%E4%BA%8Earia2%E6%9C%80%E5%AE%8C%E6%95%B4%E7%9A%84%E4%B8%80%E7%AF%87/)
6. [Aria2配置文件参数翻译详解](http://www.senra.me/aria2-conf-file-parameters-translation-and-explanation/)
7. [使用winsw部署Windows服务](https://segmentfault.com/a/1190000019520072)
8. [winsw - Windows Service Wrapper in a permissive license](https://github.com/winsw/winsw)
9. [ngosang/trackerslist](https://github.com/ngosang/trackerslist)
10. [网盘直链下载助手](https://www.baiduyun.wiki/)

## 一些说明

因为参考资料1里大佬的东西太久没有更新，于是我打算自己研究一下。因此参考了很多大佬的资料，在他们的基础上整理修改而得。

修改的内容如下：

1. 替换 `aria2c.exe` 为解除单服务器线程数限制编译版，更新到 `1.37.0` 版本。
2. 更新 `AriaNg` 到 `1.3.8` 版本，不过更推荐采用浏览器插件进行管理。
3. 修改 `aria2.conf` 配置文件，增加下载线程、添加详细注释等。
4. 添加最新 `trackers` 服务器，并添加 `trackers` 自动更新脚本。
5. 修改 `aria2-winsw.xml` 配置文件，限制日志文件大小。
6. 添加 `dht.dat` 和 `dht6.dat` 文件，方便找到 `dht` 网络。
