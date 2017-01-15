/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Produto;
import java.util.ArrayList;
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
        
        Session sesssion = Connection.getSession();
        session.beginTransaction();
        List<Produto> produtos = null;
        
        try {
            produtos = (List<Produto>) session.createQuery("from produto").list();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        Transaction t = session.beginTransaction();
        t.commit();
        return produtos;
        
    }
    
    public Produto add(Produto produto) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        session.save(produto);
        t.commit();
        session.close();
        return produto;
    }
    
    public Produto delete(Integer id) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        Produto produto = (Produto) session.load(Produto.class, id);
            if (null != produto) {
                session.delete(produto);
            }
        t.commit();
        return produto;
    }
    
}
