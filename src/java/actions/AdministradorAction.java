/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import dao.AdministradorDAO;
import entidades.Administrador;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author railan
 */
public class AdministradorAction extends ActionSupport {
    
    private Administrador administrador = new Administrador();
    List<Administrador> administradores = new ArrayList<Administrador>();
    AdministradorDAO dao = new AdministradorDAO();

    private String login, senha;

    public Administrador getAdministrador() {
        return administrador;
    }

    public void setAdministrador(Administrador administrador) {
        this.administrador = administrador;
    }

    public List<Administrador> getAdministradores() {
        return administradores;
    }

    public void setAdministradores(List<Administrador> administradores) {
        this.administradores = administradores;
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
        administradores = dao.list();
        return SUCCESS;
    }
    
    public String execute() {  
        if (dao.validacaoLogin(getLogin(), getSenha())) { 
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            Administrador a = dao.getByLogin(getLogin());
            session.setAttribute("administrador", a);
            return "success";
        }
        return "login ou senha incorretos";
    }
}
