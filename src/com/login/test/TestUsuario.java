package com.login.test;

import com.login.negocio.Facade;
import com.login.negocio.UsuarioABM;

public class TestUsuario {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Facade facade= new Facade();
		UsuarioABM adm= facade.getUsuarioABM();
		
		try {
			System.out.println(adm.traerUsuario(1).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
