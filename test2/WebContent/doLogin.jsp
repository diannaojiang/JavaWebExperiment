<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
  String userName=request.getParameter("username");//获取用户名
  session.setAttribute("name",userName); //用户名写入session，显示留言时需要
  String passWord=request.getParameter("password");//获取口令
  if(userName.equals("admin")&&passWord.equals("123")) //用户名和密码正确
 	 response.sendRedirect("messageBoard.jsp"); //重定向到留言页面
  else
     response.sendError(500,"登陆错误，用户名或密码不正确！");
   %>
