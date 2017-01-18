/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import dao.ProdutoDAO;
import entidades.Produto;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author aluno
 */
public class ProdutoAction {

    private List<Produto> listaProdutos;
    private List<Produto> listaSelecionados;
    private Integer codigoProduto;
    private Integer quantidadeProduto;

    public Integer getQuantidadeProduto() {
        return quantidadeProduto;
    }

    public void setQuantidadeProduto(Integer quantidadeProduto) {
        this.quantidadeProduto = quantidadeProduto;
    }

    public List<Produto> getListaSelecionados() {
        return listaSelecionados;
    }

    public void setListaSelecionados(List<Produto> listaSelecionados) {
        this.listaSelecionados = listaSelecionados;
    }

    public Integer getCodigoProduto() {
        return codigoProduto;
    }

    public void setCodigoProduto(Integer codigoProduto) {
        this.codigoProduto = codigoProduto;
    }

    public List<Produto> getListaProdutos() {
        return listaProdutos;
    }

    public void setListaProdutos(List<Produto> listaProdutos) {
        this.listaProdutos = listaProdutos;
    }

    public String execute() {
        ProdutoDAO dao = new ProdutoDAO();
        listaProdutos = dao.list();
        return "success";
    }

    public String addItem() {
        ProdutoDAO dao = new ProdutoDAO();
        Produto p = dao.getById(codigoProduto);
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        if (session.getAttribute("listaSelecionados") == null) {
            listaSelecionados = new ArrayList<Produto>();
            session.setAttribute("listaSelecionados", listaSelecionados);
        } else {
            listaSelecionados = (List<Produto>) session.getAttribute("listaSelecionados");
        }
        p.setQuantidade(quantidadeProduto);
        listaSelecionados.add(p);
        session.setAttribute("listaSelecionados", listaSelecionados);
        execute();
        return "success";
    }
}
