/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import dao.ClienteDAO;
import entidades.Cliente;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import org.hibernate.SessionFactory;

/**
 *
 * @author Railan
 */
public class ClienteAction extends ActionSupport {
    
    private Cliente cliente = new Cliente();
    List<Cliente> clientes = new ArrayList<Cliente>();
    ClienteDAO dao = new ClienteDAO();
    private String login, senha;
    
    public Cliente getModel() {
        return cliente;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public List<Cliente> getClientes() {
        return clientes;
    }

    public void setClientes(List<Cliente> clientes) {
        this.clientes = clientes;
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
    
    public String list() {
        clientes = dao.list();
        return SUCCESS;
    }
    
    public String execute() {  
        if (dao.validacaoLogin(getLogin(), getSenha())) { 
            return "success";
        }
        return "login ou senha incorretos";
    }
   
}
