package com.login.controladores;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.login.negocio.Facade;
import com.login.negocio.LoginABM;



public class ControladorLogin extends HttpServlet {
	//Hotel hotel=Hotel.getInstanciaHotel();		
	private static final long serialVersionUID = 1L;
	
	/* NO deberia atender por GET */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		
		doPost(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		Facade facade= new Facade();
		LoginABM abm= facade.getLoginABM();
		
		try {
			String usuario= request.getParameter("usuario");
			request.getRequestDispatcher("/jsp/404.jsp").forward(request, response);	

			
			

	} catch (Exception e) {
		request.getRequestDispatcher("/jsp/404.jsp").forward(request, response);
		
	}	
		session.setAttribute("usuario", request.getAttribute("usuario"));
	}
}