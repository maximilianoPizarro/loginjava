package com.login.negocio;

import com.login.dao.LoginDao;
import com.login.modelo.Login;
import com.google.gson.Gson;

import java.io.File;
import java.util.GregorianCalendar;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class LoginABM {
	
	private LoginDao daoA=new LoginDao();
	
	public Login traerLogin(int idLogin) throws Exception {

		Login a = daoA.traerLogin(idLogin);

		if (a == null) {
			throw new Exception("No existe Registro con ese dominio");
		}
		return a;
	}

	
	}



	
