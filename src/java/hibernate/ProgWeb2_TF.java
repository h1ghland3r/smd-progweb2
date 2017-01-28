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
        a.setNome("railan");
        a.setEmail("railan@gmail.com");
        a.setLogin("railan");
        a.setSenha("123");
        
        /* Cliente */
        Cliente c = new Cliente();
        c.setNome("italo");
        c.setEmail("italo@gmail.com");
        c.setLogin("italo");
        c.setSenha("123");
        
        /* Produto 1 */
        Produto p = new Produto();
        p.setDescricao("PC");
        p.setPreco(500.0);
        p.setQuantidade(5);
        
        /* Produto 2 */
        Produto p2 = new Produto();
        p2.setDescricao("Teclado");
        p2.setPreco(100.0);
        p2.setQuantidade(10);
        
        /* Produto 2 */
        Produto p3 = new Produto();
        p3.setDescricao("Mouse");
        p3.setPreco(50.0);
        p3.setQuantidade(15);
        
        /* Venda */
        //Venda v = new Venda();
        //v.setData(new Date());
        
        /* Venda_Item */
        //Venda_Item i = new Venda_Item();
        //i.setProduto(p);
        //i.setQuantidade(5);
        //i.setVenda(v);
        
        Transaction t = session.beginTransaction();
        session.save(a);
        session.save(c);
        session.save(p);
        session.save(p2);
        session.save(p3);
        //session.save(v);
        //session.save(i);
        
        t.commit();
        
        session.close();
    }
    
}
