/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Produto;
import entidades.Venda;
import entidades.Venda_Item;
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
    
    public void addVendaItem(Integer p, Integer v, int q) {
        Session session = Connection.getSession();
        Transaction t = session.beginTransaction();
        Venda_Item i = new Venda_Item();
        i.setProduto(p);
        i.setVenda(v);
        i.setQuantidade(q);
        session.save(i);
        t.commit();
        session.close();
    }
}
