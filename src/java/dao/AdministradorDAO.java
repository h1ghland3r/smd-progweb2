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
    

    
}
