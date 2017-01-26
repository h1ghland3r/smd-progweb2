/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Venda;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.Connection;

/**
 *
 * @author aluno
 */
public class VendaItemDAO {
    
    Session session;
    Transaction transaction;
    
//    private VendaItem vendaItem;
//    
//    public VendaItem add(Venda venda) {
//        Session session = Connection.getSession();
//        Transaction t = session.beginTransaction();
//        VendaItem i = new VendaItem();
//        i.setVenda(venda);
//        i.setProduto(produto);
//        i.setQuantidade(produto.getQuantidade());
//        Integer vendaItem = (Integer) session.save(i);
//        t.commit();
//        session.close();
//        return vendaItem;
//    }
    
    
}
