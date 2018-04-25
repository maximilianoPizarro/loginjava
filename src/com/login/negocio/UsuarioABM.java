package com.login.negocio;

import com.login.dao.UsuarioDao;
import com.login.modelo.Usuario;
import com.google.gson.Gson;

import java.io.File;
import java.util.GregorianCalendar;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UsuarioABM {
	
	private UsuarioDao daoA=new UsuarioDao();
	
	public Usuario traerUsuario(int idusuario) throws Exception {

		Usuario a = daoA.traerUsuario(idusuario);

		if (a == null) {
			throw new Exception("No existe usuario con ese id");
		}
		return a;
	}

	
	}



	
