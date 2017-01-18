/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Cliente;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import util.Connection;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Railan
 */
public class ClienteDAO {
    
    Session session;
    Transaction transaction;
    
    private Cliente cliente;	
    
    public List<Cliente> list() {
        
        Session session = Connection.getSession();
        session.beginTransaction();
        List<Cliente> clientes = null;
        
        try {
            clientes = (List<Cliente>) session.createQuery("FROM Cliente").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        session.getTransaction().commit();
        session.close();
        return clientes;
    }
    
    public Cliente getByLogin(String login) {
        
        Session session = Connection.getSession();
        session.beginTransaction();
        Cliente cliente = null;
        
        try {
            cliente = (Cliente) session.get(Cliente.class, login);
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        session.getTransaction().commit();
        session.close();
        return cliente;
    }
    
    public boolean validacaoLogin (String login, String senha) {
        Session session = Connection.getSession();
//        session.persist("logado", "true");
        Query query = session.createQuery("FROM Cliente c WHERE c.login=:login and c.senha=:senha");
        query.setParameter("login", login);
        query.setParameter("senha", senha);
        List<Cliente> list = query.list();
        if (list.size() > 0) {
            session.close();
            return true;
        }
        session.close();
        return false;
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
        session.beginTransaction();
        Cliente cliente = (Cliente) session.load(Cliente.class, id);
            if (null != cliente) {
                session.delete(cliente);
            }
        session.getTransaction().commit();
        session.close();
        return cliente;
    }
    
}
