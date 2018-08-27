package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Login.LoginLogic;
import Login.User;


@WebServlet("/Top")
public class Top extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");

		if(name == null || name==""){
			name = "名無し";
		}

		User user = new User(name,pass);

		LoginLogic loginlogic = new LoginLogic();
		boolean isLogin = loginlogic.execute(user);


		if(isLogin){
			HttpSession session = request.getSession();
			session.setAttribute("loginUser",user);
		}

		RequestDispatcher dispatcher =
				request.getRequestDispatcher
				("/WEB-INF/view/top.jsp");
		dispatcher.forward(request, response);

	}

}
