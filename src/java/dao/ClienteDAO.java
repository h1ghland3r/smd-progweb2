/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Cliente;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import util.Connection;

/**
 *
 * @author Railan
 */
public class ClienteDAO {
    
    Session session;
    Transaction transaction;
    
    private Cliente cliente;
    
    public List<Cliente> list() {
        
        Session sesssion = Connection.getSession();
        session.beginTransaction();
        List<Cliente> clientes = null;
        
        try {
            clientes = (List<Cliente>) session.createQuery("from cliente").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        Transaction t = session.beginTransaction();
        t.commit();
        return clientes;
    }
    
    public Cliente add(Cliente cliente) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        session.save(cliente);
        t.commit();
        session.close();
        return cliente;
    }
    
    public Cliente delete(Integer id) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        Cliente cliente = (Cliente) session.load(Cliente.class, id);
            if (null != cliente) {
                session.delete(cliente);
            }
        t.commit();
        return cliente;
    }
    
}
