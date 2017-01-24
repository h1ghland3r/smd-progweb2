/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Administrador;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import util.Connection;

/**
 *
 * @author Railan
 */
public class AdministradorDAO {
    
    Session session;
    Transaction transaction;
    
    private Administrador administrador;
    
    public List<Administrador> list() {
        
        Session session = Connection.getSession();
        session.beginTransaction();
        List<Administrador> administradores = null;
        
        try {
            administradores = (List<Administrador>) session.createQuery("FROM Administrador").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        session.getTransaction().commit();
        session.close();
        return administradores;
    }
    
    public Administrador getByLogin(String login) {
        
        Session session = Connection.getSession();
        session.beginTransaction();
        Administrador administrador = null;
        
        try {
            administrador = (Administrador) session.get(Administrador.class, login);
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        session.getTransaction().commit();
        session.close();
        return administrador;
    }
    
    public boolean validacaoLogin (String login, String senha) {
        Session session = Connection.getSession();
//      session.persist("logado", "true");
        Query query = session.createQuery("FROM Administrador c WHERE c.login=:login and c.senha=:senha");
        query.setParameter("login", login);
        query.setParameter("senha", senha);
        List<Administrador> list = query.list();
        if (list.size() > 0) {
            session.close();
            return true;
        }
        session.close();
        return false;
    }
    
    public Administrador add(Administrador administrador) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        session.save(administrador);
        t.commit();
        session.close();
        return administrador;
    }
    
    public Administrador delete(Integer id) {
        Session session = Connection.getSession();
        session.beginTransaction();
        Administrador administrador = (Administrador) session.load(Administrador.class, id);
            if (null != administrador) {
                session.delete(administrador);
            }
        session.getTransaction().commit();
        session.close();
        return administrador;
    }
    
}
