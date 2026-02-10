package com.web.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.web.model.Registration;

@WebServlet("/ServletController1")
public class ServletController1 extends HttpServlet {
	

	HttpSession session;
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		session = request.getSession();
		session.setAttribute("email", request.getParameter("email"));
		session.setAttribute("password", request.getParameter("password"));
		
		Registration registration = new Registration();
		int RowCounted=registration.RowsEffected(session);
		
		
		if(RowCounted !=0) {
		response.sendRedirect("RegistrationSuccess.jsp");
		}else {
			response.sendRedirect("RegistrationFailed.jsp");
		}
		
	}

}
