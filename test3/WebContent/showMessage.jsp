<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="bean.toolbean.MyTools" %>
<%@page import="bean.valuebean.Message"%>

<%Message message=(Message)request.getAttribute("msg"); %>
<html>
	<title>显示留言信息</title>
	<body>
留言者：<%=session.getAttribute("name") %><br>
留言标题：<%=MyTools.change(message.getTitle()) %><br>
留言内容：<%=MyTools.change(message.getContent()) %>
	</body>
</html>
