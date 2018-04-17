package com.login.dao;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.login.modelo.Login;

public class LoginDao {
	
	
	private static Session session;

	private Transaction tx;
	
	private void iniciaOperacion() throws HibernateException {
		session = HibernateUtil.getSessionFactory().openSession();
		tx = session.beginTransaction();
	}

	private void manejaExcepcion(HibernateException he) throws HibernateException {
		tx.rollback();
		throw new HibernateException("ERROR en la capa de acceso a datos", he);
	}
	
	public Login traerLogin(int idlogin) throws HibernateException {
		Login objeto = null;
		try {
			iniciaOperacion();
			String hql="from login where idlogin =:idlogin";
			
			objeto=(Login) session.createQuery(hql).setParameter("idlogin", (int)idlogin).uniqueResult();
	
		}catch (HibernateException he) {
			manejaExcepcion(he);
			throw he;
		} finally {
				session.close();
				}
		return objeto;
		}
	
	

}
