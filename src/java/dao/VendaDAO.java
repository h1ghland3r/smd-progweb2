/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Cliente;
import entidades.Venda;
import java.util.Date;
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
    
    
}
