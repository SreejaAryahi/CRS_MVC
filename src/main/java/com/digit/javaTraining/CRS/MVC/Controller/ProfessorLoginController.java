package com.digit.javaTraining.CRS.MVC.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digit.javaTraining.CRS.MVC.Model.ProfessorApp;
import com.digit.javaTraining.CRS.MVC.Model.StudentApp;
@WebServlet("/LoginProfessor")
public class ProfessorLoginController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_name = req.getParameter("user_name");
		String pass1 = req.getParameter("pass1");
	   ProfessorApp p = new ProfessorApp();
		p.setUser_name(user_name);
		p.setPass1(pass1);
	    boolean b = p.ProfessorLogin();
	    if(b) {
	    	resp.sendRedirect("/CourseManagementMVCProject/ProfessorLoginSuccess.jsp");
	    }
	    else {
	    	resp.sendRedirect("/CourseManagementMVCProject/ProfessorLoginFail.jsp");
	    	
	}

}
}
