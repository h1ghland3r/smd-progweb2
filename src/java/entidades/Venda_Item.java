/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "venda_item")
/**
 *
 * @author italo
 */
public class Venda_Item implements Serializable{
    
    private static final long serialVersionUID = 1L;
    @Id
    @OneToOne
    @JoinColumn(name="venda_id")
    private Venda venda;
    
    @Id
    @OneToOne
    @JoinColumn(name="produto_id")
    private Produto produto;
    
    @Column(name = "quantidade")
    private Integer quantidade;

    public Venda getVenda() {
        return venda;
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Integer getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

}
