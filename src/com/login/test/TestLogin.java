package com.login.test;

import com.login.negocio.Facade;
import com.login.negocio.LoginABM;

public class TestLogin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Facade facade= new Facade();
		LoginABM adm= facade.getLoginABM();
		
		try {
			System.out.println(adm.traerLogin(1).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
