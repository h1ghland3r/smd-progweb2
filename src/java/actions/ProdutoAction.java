/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProdutoDAO;
import dao.VendaDAO;
import dao.VendaItemDAO;
import entidades.Cliente;
import entidades.Produto;
import entidades.Venda;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author aluno
 */
public class ProdutoAction extends ActionSupport {

    private List<Produto> listaProdutos;
    private List<Produto> listaSelecionados;
    private List<Venda> listaVendas;
    private Integer codigoVenda;
    private Integer codigoProduto;
    private Integer quantidadeProduto;
    private Venda venda = new Venda();
    
    public Integer getQuantidadeProduto() {
        return quantidadeProduto;
    }

    public void setQuantidadeProduto(Integer quantidadeProduto) {
        this.quantidadeProduto = quantidadeProduto;
    }
    
    public List<Produto> getListaSelecionados() {
        return listaSelecionados;
    }

    public List<Venda> getListaVendas() {
        return listaVendas;
    }

    public void setListaVendas(List<Venda> listaVendas) {
        this.listaVendas = listaVendas;
    }

    public Integer getCodigoVenda() {
        return codigoVenda;
    }

    public void setCodigoVenda(Integer codigoVenda) {
        this.codigoVenda = codigoVenda;
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

    public Venda getVenda() {
        return venda;
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    // Métodos para Produtos: Listar, adicionar e remover
    
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
    
    public String removeItem() {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
       
        if (session.getAttribute("listaSelecionados") != null) {
            List<Produto> listaSelecionados = (List<Produto>) session.getAttribute("listaSelecionados");
            for (int i = 0; i < listaSelecionados.size(); i++) {
                if (listaSelecionados.get(i).getId().equals(getCodigoProduto())) {
                    listaSelecionados.remove(i);
                    break;
                }
            }
            this.listaSelecionados = listaSelecionados;
            session.setAttribute("listaSelecionados", listaSelecionados);
        }
        
        execute();
        return "success";
    }
    
    public String removeProduto() {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        Produto produto = (Produto) session.getAttribute("produto");
       
        ProdutoDAO dao = new ProdutoDAO();
        dao.delete(codigoProduto);
        return "success";
    }
    
    // Métodos para Venda: Listar, adicionar e remover
    
    public String addVenda(){
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        Cliente cliente = (Cliente) session.getAttribute("cliente");

        VendaDAO dao2 = new VendaDAO();
        Integer vendaId = dao2.add(cliente);        
        Venda v = dao2.getById(vendaId);
        
        if (session.getAttribute("listaSelecionados") == null) {
            listaSelecionados = new ArrayList<Produto>();
            session.setAttribute("listaSelecionados", listaSelecionados);
        } else {
            listaSelecionados = (List<Produto>) session.getAttribute("listaSelecionados");
        }
        VendaItemDAO dao3= new VendaItemDAO();
        for (Produto p : listaSelecionados) {
            dao3.addVendaItem(p.getId(), vendaId, p.getQuantidade());
        }

        session.setAttribute("listaSelecionados", listaSelecionados);
        execute();
        return "success";
    }
    
    public String listaVendas() {
        VendaDAO dao2 = new VendaDAO();
        listaVendas = dao2.list();
        return "success";
    }
    
    public String removeVenda() {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        Venda venda = (Venda) session.getAttribute("venda");
       
        VendaDAO dao2 = new VendaDAO();
        dao2.delete(codigoVenda);
        return "success";
    }
        
}
