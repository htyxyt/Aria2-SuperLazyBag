Aria2-超懒人包

【使用方法】

a.安装

1.解压目录下的Aria2.zip，并将解压后的文件夹Aria2复制到想要安装的位置；

2.右键管理员模式运行install.bat，等待脚本执行完毕，aria2服务即安装成功；

3.任务管理器-详细信息-服务，可以看到aria2服务正在运行；

4.aria2管理界面可以使用网页AriaNg(AriaNg-1.1.4-AllInOne文件夹下的html文件)，浏览器插件Camtd、Aria2 for Chrome、Aria2 for Edge等等。

b.卸载

1.右键管理员模式运行uninstall.bat，等待脚本执行完毕，aria2服务即卸载成功；

2.可根据需要选择是否清除Aria2文件夹，也可以手动删除。

【程序修改】

a.aria2主程序更新

1.aria2c.exe的官方程序下载地址见参考资料2，而懒人包采用的是解除单服务器线程数限制编译版，见参考资料3；

2.任务管理器-详细信息-服务，选中aria2服务，右键停止；

3.下载相应版本的aria2c.exe文件，覆盖Aria2目录下的文件即可；

4.任务管理器-详细信息-服务，选中aria2服务，右键开始。

b.AriaNg界面更新

1.下载地址见参考资料4；

2.下载相应版本的AriaNg压缩包(推荐AllInOne.zip即单文件版)，解压后用浏览器中打开html文件即可；

3.若使用浏览器插件来管理aria2，则不需要更新它。

c.编辑Aria2配置

1.若有需求，打开并修改Aria2目录下的aria2.conf文件即可，具体参数可见参考资料5、参考资料6；

2.任务管理器-详细信息-服务，选中aria2服务，右键重新启动。

d.编辑winsw配置

1.若有需求，打开并修改Aria2目录下的aria2-winsw.xml文件即可，具体参数可见参考资料7、参考资料8；

2.任务管理器-详细信息-服务，选中aria2服务，右键重新启动。

e.trackers更新

1.trackers服务器地址可见参考资料9，自动更新脚本可见参考资料10；

2.手动更新：打开并修改Aria2目录下的aria2.conf文件，在bt-tracker=后添加trackers服务器地址，用逗号分隔；

自动更新：选中Aria2目录下的RenewTrackers.ps1文件，右键使用PowerShell运行；

3.任务管理器-详细信息-服务，选中aria2服务，右键重新启动。

【下载功能】

1.可配合Camtd、Aria2 for Chrome、Aria2 for Edge等浏览器插件，接管HTTP下载；

2.可配合参考资料11里的脚本，下载网盘文件，使用方法见网页；

3.可添加磁链或种子，进行BT下载。

【参考资料】

1.Aria2 - 超·懒人包（2018.11.19 更新）https://meta.appinn.net/t/aria2-2018-11-19/7434

2.aria2 - The ultra fast download utility https://github.com/aria2/aria2

3.aria2 build scripts on msys2 with custom patches https://github.com/myfreeer/aria2-build-msys2

4.AriaNg https://github.com/mayswind/AriaNg

5.关于aria2最完整的一篇 http://ivo-wang.github.io/2019/04/18/%E5%85%B3%E4%BA%8Earia2%E6%9C%80%E5%AE%8C%E6%95%B4%E7%9A%84%E4%B8%80%E7%AF%87/

6.Aria2配置文件参数翻译详解 http://www.senra.me/aria2-conf-file-parameters-translation-and-explanation/

7.使用winsw部署Windows服务 https://segmentfault.com/a/1190000019520072

8.winsw - Windows Service Wrapper in a permissive license https://github.com/winsw/winsw

9.ngosang/trackerslist https://github.com/ngosang/trackerslist

10.Aria2 bt-tracker自动更新脚本 https://meta.appinn.net/t/topic/9086

11.网盘直链下载助手 https://www.baiduyun.wiki/

【一些说明】

最开始，因为参考资料1里大佬的东西太久没有更新，于是我打算自己研究一下。

因此参考了很多大佬的资料，在他们的基础上整理修改而得。

不敢妄夺功劳，只愿造福大家。

修改的内容如下：

1.替换aria2c.exe为解除单服务器线程数限制编译版，更新到1.35.0版本；

2.更新AriaNg到1.1.7版本，不过更推荐采用浏览器插件进行管理；

3.修改aria2.conf配置文件，增加下载线程、添加详细注释等；

4.添加最新trackers服务器，并添加trackers自动更新脚本；

5.修改aria2-winsw.xml配置文件，限制日志文件大小；

6.添加dht.dat和dht6.dat文件，方便找到dht网络。

2020.11.20，YS
