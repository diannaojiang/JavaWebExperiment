<%@ page contentType="text/html; charset=gb2312"%>
<%@ page import="bean.toolbean.MyTools" %>
<%@page import="bean.valuebean.Message"%>

<%Message message=(Message)request.getAttribute("msg"); %>
<html>
	<title>��ʾ������Ϣ</title>
	<body>
�����ߣ�<%=session.getAttribute("name") %><br>
���Ա��⣺<%=MyTools.change(message.getTitle()) %><br>
�������ݣ�<%=MyTools.change(message.getContent()) %>
	</body>
</html>
