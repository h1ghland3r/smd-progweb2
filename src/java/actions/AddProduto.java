/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;
import com.opensymphony.xwork2.ActionSupport;
import dao.ProdutoDAO;
import entidades.Produto;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author italo
 */
public class AddProduto extends ActionSupport {
    
    Session session;
    
    private Produto produto = new Produto();
    List<Produto> produtos = new ArrayList<Produto>();
    ProdutoDAO dao = new ProdutoDAO();
    
    private Integer id;
    private String descricao;
    private Integer quantidade;
    private Double preco;

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public String execute() {
        produto.setDescricao(descricao);
        produto.setQuantidade(quantidade);
        produto.setPreco(preco);
        
        dao.add(produto);
        return "success";
    }
    
    public String updateProduto(){
        
        dao.update(produto);
        return "success";
    }
}
