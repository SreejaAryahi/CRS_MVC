package com.digit.javaTraining.CRS.MVC.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digit.javaTraining.CRS.MVC.Model.CourseApp;

@WebServlet("/removeCourse")
public class removeCourseC extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int cid = Integer.parseInt(req.getParameter("cid"));
		CourseApp c = new CourseApp();
		c.setCid(cid);
		boolean b = c.RemoveCourse();
		if(b == true) {
			resp.sendRedirect("/CourseManagementMVCProject/removeCoursesucc.jsp");
			
		}
		else {
			resp.sendRedirect("/CourseManagementMVCProject/ManageControl.jsp");
		}
	}

}