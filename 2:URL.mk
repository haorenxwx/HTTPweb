2:URL.mk

- URI:
	URL:通过描述资源位置标识资源
	URN:通过名字识别资源

- URL结构:
	<scheme>://<user>:<password>@<host>:<port>/<path>;<params>?<query>#<frag>
	常用部分：
	<scheme>://<host>:<port>
	http://www.joes-hardware.com:80

	- <scheme>:
		告诉负责解析URL的app应该使用什么协议，大小写不敏感
	- <host>:<port>:
		port标识了服务器正在监听的网络端口，对下层使用了TCP协议的HTTP,默认端口80

	- <user>:<password>：
		很多服务器要求输入，如FTP,如果没有，标识使用匿名用户和默认密码
	- <params>:
		用“；”隔开，提供协议所需的参数，用来正确的与服务器互动
	- <frag>:
		引用部分资源或者资源的一个片段，注意，HTTP服务器只处理整个对象，浏览器获得整套资源后，根据片段显示部分资源

- URL快捷方式:
	- 相对URL:
		一个不完整的URL，相对一个基础的URL进行解析
		1：找到相应的基础URL
			- 在HTML文档中包含了定义URL的HTML标记<BASE>
			- 在没有指定基础URL资源中发现一个相对URL，可以将它的所属资源的URL作为基础
		2：解析，转换	
	- 自动扩展URL
		主机名扩展
		历史扩展

- scheme:
	- http: 超文本传输协议，没有UID和password，默认端口为80
	- https: 与http类似，但使用了SSL，为HTTP提供端到端的加密机制，默认端口443
	- mailto: 面向E-mail
	- ftp: 文件传输协议URL，从FTP服务器上下载上传文件，并获取FTP服务器上的目录结构内容的列表
			ftp://<user>:<password>@<host>:<port>/<path>;<params>
	- rtsp/rtspu: 通过real time streaming protocol解析音/视频媒体资源的标识符
			rtspu：‘u’表示用UDP协议获取资源
			rstp://<user>:<password>@<host>:<port>/<path>
	- file: 表示指定一台主机上可直接访问的文件
			file://<host>/<path>
	- news: 位置无关
			news:<newsgroup>
	- telnet: 访问交互式业务，表示可通过telnet协议访问的交互式应用程序
			telnet://<user>:<password>@<host>:<port>/
