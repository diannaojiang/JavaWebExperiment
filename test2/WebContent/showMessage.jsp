<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.toolbean.MyTools" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="message" class="bean.valuebean.Message" scope="request">
	<jsp:setProperty name="message" property="*"/>
</jsp:useBean>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
留言者：<%=session.getAttribute("name") %><br>
留言标题：<%=MyTools.change(message.getTitle()) %><br>
留言内容：<%=MyTools.change(message.getContent()) %>
</body>
</html>