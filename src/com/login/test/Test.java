package com.login.test;

import java.util.List;

import com.login.negocio.Facade;
import com.login.negocio.LoginABM;
import com.login.negocio.TiposABM;
import com.login.funciones.Funciones;
import com.login.modelo.Login;
import com.login.modelo.Tipos;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class Test {

	public static void main(String[] args) {
		
		Facade facade=new Facade();
		
		TiposABM adm2=facade.getTiposABM();
		
		try {
			System.out.println("Resultado "+adm2.traerTipo(1));
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*		
		 * 
		 * 		LoginABM adm= facade.getLoginABM();
		try {
			System.out.println("asdsad"+adm.traerLogin(1).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
        List<Tipos> tipos;
		try {
			tipos = adm2.traerTipos();
	        for(Tipos user : tipos)
	        {
	            //imprimimos el objeto pivote
	            System.out.println(user.toString());
	        }
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        */

		
/*
		System.out.println("-------- PostgreSQL "
				+ "JDBC Connection Testing ------------");

		try {

			Class.forName("org.postgresql.Driver");

		} catch (ClassNotFoundException e) {

			System.out.println("Where is your PostgreSQL JDBC Driver? "
					+ "Include in your library path!");
			e.printStackTrace();
			return;

		}

		System.out.println("PostgreSQL JDBC Driver Registered!");

		Connection connection = null;

		try {

			connection = DriverManager.getConnection(
					"jdbc:postgresql://127.0.0.1:5432/login", "postgres",
					"root");
			

		} catch (SQLException e) {

			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
			return;

		}

		if (connection != null) {
			System.out.println("You made it, take control your database now!");
		} else {
			System.out.println("Failed to make connection!");
		}*/
	}		
		
	
	


}
