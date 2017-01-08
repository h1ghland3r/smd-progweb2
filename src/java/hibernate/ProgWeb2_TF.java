package hibernate;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import entidades.Administrador;
import entidades.Cliente;
import entidades.Produto;
import entidades.Venda;
import entidades.Venda_Item;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.Connection;

/**
 *
 * @author italo
 */
public class ProgWeb2_TF {

    public static void main(String[] args) {
       Session session = Connection.getSession();
        
        /* Administrador */
        Administrador a = new Administrador();
        a.setNome("Joao");
        a.setEmail("joao@gmail.com");
        a.setLogin("Joao123");
        a.setSenha("joao123");
        
        /* Cliente */
        Cliente c = new Cliente();
        c.setNome("Cliente1");
        c.setEmail("Cliente1@gmail.com");
        c.setLogin("Cliente1");
        c.setSenha("Cliente123");
        
        /* Produto */
        Produto p = new Produto();
        p.setDescricao("PC");
        p.setPreco(500.0);
        p.setQuantidade("5");
        
        /* Venda */
        Venda v = new Venda();
        v.setData(new Date());
        
        /* Venda_Item */
        Venda_Item i = new Venda_Item();
        i.setProduto(p);
        i.setQuantidade(5);
        i.setVenda(v);
        
        Transaction t = session.beginTransaction();
        session.save(a);
        session.save(c);
        session.save(p);
        session.save(v);
        session.save(i);
        
        t.commit();
        
        session.close();
    }
    
}
