/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Cliente;
import entidades.Produto;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import util.Connection;

/**
 *
 * @author italo
 */
public class ProdutoDAO {
    
    Session session;
    Transaction transaction;
    
    private Produto produto;
    
    public List<Produto> list() {
        
        Session session = Connection.getSession();
        Transaction tx = session.beginTransaction();
        List<Produto> produtos = null;
        
        try {
            produtos = (List<Produto>) session.createCriteria(Produto.class).list();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        tx.commit();
        session.close();
        return produtos;
        
    }
    
        
    public Produto getById(Integer id) {
        
        Session session = Connection.getSession();
        session.beginTransaction();
        Produto produto = null;
        
        try {
            produto = (Produto) session.get(Produto.class, id);
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        session.getTransaction().commit();
        session.close();
        return produto;
    }
    
    public Produto add(Produto produto) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        session.save(produto);
        t.commit();
        session.close();
        return produto;
    }
    
    public void delete(Produto id) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        Produto p = (Produto) session.load(Produto.class, id);
            if (p != null) {
                session.delete(p);
            }
        t.commit();
        session.close();
    }
    
}
