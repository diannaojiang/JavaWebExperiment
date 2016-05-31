package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoMessage extends HttpServlet {
//因为留言信息是以post方式提交的，所以重写doPost方法，运行时调用此方法
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		bean.valuebean.Message message=new bean.valuebean.Message();
		message.setTitle(request.getParameter("title"));//保存留言标题
		message.setContent(request.getParameter("content"));//保存留言内容
		request.setAttribute("msg", message);//将对象message保存到request中
		//下面2行实现转发到showMessage.jsp
		RequestDispatcher dispatcher=request.getRequestDispatcher("showMessage.jsp");
		dispatcher.forward(request, response);		
	}
}
