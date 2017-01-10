/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;
import com.opensymphony.xwork2.ActionSupport;
import entidades.Cliente;
import dao.ClienteDAO;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 * @author Railan
 */
public class AddClienteAction extends ActionSupport {
    
    Session session;
    
    private Cliente cliente = new Cliente();
    List<Cliente> clientes = new ArrayList<Cliente>();
    ClienteDAO dao = new ClienteDAO();

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
    
    public String execute() {
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setLogin(login);
        cliente.setSenha(senha);
        
        dao.add(cliente);
        return "success";
    }
    
}
