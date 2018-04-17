package com.login.test;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;

import com.login.dao.HibernateUtil;

public class Test2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Session session = null;
		session = HibernateUtil.getSessionFactory().openSession();
	    Query query = session.createQuery("SELECT new map(t.idtipologin as idtipologin, t.tipologin as tipologin) FROM tipologin as t ");


	    List<Map> listaResultados = query.list();
	    

	    for (int i = 0; i < listaResultados.size(); i++)
	    {
	        Map mapa = listaResultados.get(i);

	        System.out.println("Datos del mapa " + i);

	        Set llaves = mapa.keySet();

	        for(Iterator<String> it = llaves.iterator(); it.hasNext();)
	        {
	            String llaveActual = it.next();

	            System.out.println("\tLlave: " + llaveActual + ", valor: " + mapa.get(llaveActual));
	        }
	    }
		
	}

}
