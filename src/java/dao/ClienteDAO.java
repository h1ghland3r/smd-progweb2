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
    
    private Integer id;
    private String nome;
    private String email;
    private String login;
    private String senha;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
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
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setLogin(login);
        cliente.setSenha(senha);
        System.out.println("Ei, lê eu aqui!!!!" + cliente);

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
