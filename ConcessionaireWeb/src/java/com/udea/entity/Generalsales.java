/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ASANTAANA
 */
@Entity
@Table(name = "generalsales")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Generalsales.findAll", query = "SELECT g FROM Generalsales g")
    , @NamedQuery(name = "Generalsales.findByBillofsale", query = "SELECT g FROM Generalsales g WHERE g.billofsale = :billofsale")
    , @NamedQuery(name = "Generalsales.findByBuyer", query = "SELECT g FROM Generalsales g WHERE g.buyer = :buyer")
    , @NamedQuery(name = "Generalsales.findByPlaca", query = "SELECT g FROM Generalsales g WHERE g.placa = :placa")
    , @NamedQuery(name = "Generalsales.findByPricetaxes", query = "SELECT g FROM Generalsales g WHERE g.pricetaxes = :pricetaxes")})
public class Generalsales implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "billofsale")
    private Integer billofsale;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "buyer")
    private String buyer;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "placa")
    private String placa;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "pricetaxes")
    private String pricetaxes;

    public Generalsales() {
    }

    public Generalsales(Integer billofsale) {
        this.billofsale = billofsale;
    }

    public Generalsales(Integer billofsale, String buyer, String placa, String pricetaxes) {
        this.billofsale = billofsale;
        this.buyer = buyer;
        this.placa = placa;
        this.pricetaxes = pricetaxes;
    }

    public Integer getBillofsale() {
        return billofsale;
    }

    public void setBillofsale(Integer billofsale) {
        this.billofsale = billofsale;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
        this.buyer = buyer;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getPricetaxes() {
        return pricetaxes;
    }

    public void setPricetaxes(String pricetaxes) {
        this.pricetaxes = pricetaxes;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (billofsale != null ? billofsale.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Generalsales)) {
            return false;
        }
        Generalsales other = (Generalsales) object;
        if ((this.billofsale == null && other.billofsale != null) || (this.billofsale != null && !this.billofsale.equals(other.billofsale))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.entity.Generalsales[ billofsale=" + billofsale + " ]";
    }
    
}
