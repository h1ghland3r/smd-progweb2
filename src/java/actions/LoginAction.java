/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import dao.ClienteDAO;
import entidades.Cliente;
import javax.servlet.ServletContext;
import org.hibernate.SessionFactory;

/**
 *
 * @author Railan
 */
public class LoginAction extends ActionSupport {
    
    private Cliente cliente = new Cliente();
    ClienteDAO dao = new ClienteDAO();
    private ServletContext ctx;
    
    private String login;
    private String password;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }   
   
    public String execute() {   
        dao.validacaoLogin(cliente.getLogin(), cliente.getSenha());
        return "success";
    }
   
}
