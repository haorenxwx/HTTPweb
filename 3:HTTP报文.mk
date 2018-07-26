HTTP报文.mk

- 报文流:
	HTTP报文是在应用程序之间发送的数据块
	inbound:流向服务器
	outbound：流向Agent代理（client）

	downstream/upstream  报文总是往下游流动（包括请求和响应）
- 报文:
	请求报文 request message：
	<method><request-URL><version>  <--请求行
		1:<method>: 
			GET 
			HEAD 
			POST 
			PUT 
			TRACE 
			OPTHIONS 
			DELETE

		2:URL:资源绝对路径 
		3:支持的最高版本
	<headers>
		1:首部名字：value 由空行（CRLF）结束
		eg: Content-length:15040
		2:用tab把首部行分成多行，增加可读性
		eg: Server: Test Server
				Version 1.0
	<entity-body>
	#由任意数据组成
	
	响应 response message：
	<version><status><reason-phrase>  <--响应行
	#status/状态码 表示成功或出错: 
		200-299 成功
		300-399 代码显示资源已被移走
		400-499 客户端请求出错
		500-599 服务器出错
		eg: 200:成功	401:需要登录 404:未找到
	#reason 是数字状态码的可读版本 只对人有意义
	<headers>
	<entity-body>	
