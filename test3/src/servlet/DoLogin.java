package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DoLogin extends HttpServlet {
    //因为登录表单是以get方式提交的，所以重写doGet方法，运行时调用此方法
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName=request.getParameter("username");//获取用户名
		HttpSession session = request.getSession();
		session.setAttribute("name",userName); //用户名写入session，显示留言时(showMessage.jsp)需要
		String passWord=request.getParameter("password");//获取口令
		if(userName.equals("admin")&&passWord.equals("123")) //用户名和密码正确
		 	response.sendRedirect("messageBoard.jsp"); //重定向到留言页面
		else
		    response.sendError(500,"登陆错误，用户名或密码不正确！");
	}
}
