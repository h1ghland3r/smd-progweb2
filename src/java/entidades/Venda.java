/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "venda")

/**
 *
 * @author italo
 */
public class Venda implements Serializable{
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue
    @Basic(optional = false)
    @Column(name = "id_venda")
    private Integer id_venda;
    
    @Temporal(TemporalType.DATE)
    @Column(name = "dataDMA")
    private Date data;
    
    @OneToOne
    @JoinColumn(name="cliente_id")
    private Cliente cliente;
    
    public Venda(){
    
    }

    public Integer getId_venda() {
        return id_venda;
    }

    public void setId_venda(Integer id_venda) {
        this.id_venda = id_venda;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

}
