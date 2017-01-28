/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Cliente;
import entidades.Produto;
import entidades.Venda;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.Connection;

/**
 *
 * @author aluno
 */
public class VendaDAO {
    
    Session session;
    Transaction transaction;
    
    private Venda venda;
    
    public Integer add(Cliente cliente) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        Venda v = new Venda();
        v.setCliente(cliente);
        v.setData(new Date());
        Integer vendaId = (Integer) session.save(v);
        t.commit();
        session.close();
        return vendaId;
    }
    
     public Venda getById(Integer id) {
        
        Session session = Connection.getSession();
        session.beginTransaction();
        Venda venda = null;
        
        try {
            venda = (Venda) session.get(Venda.class, id);
        } catch (org.hibernate.HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        session.getTransaction().commit();
        session.close();
        return venda;
    }
    
    public List<Venda> list() {
        
        Session session = Connection.getSession();
        Transaction tx = session.beginTransaction();
        List<Venda> vendas = null;
        
        try {
            vendas = (List<Venda>) session.createCriteria(Venda.class).list();
        } catch (org.hibernate.HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        
        tx.commit();
        session.close();
        return vendas;    
    }
    
    public void delete(Integer id) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        Venda v = (Venda) session.load(Venda.class, id);
            if (v != null) {
                session.delete(v);
            }
        t.commit();
        session.close();
    }
    
}
