/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.model;

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;

/**
 *
 * @author Daniel
 */
@Entity
public class Smjer extends Entitet {
    
    
    private String naziv;
    private BigDecimal cijena;
    private int trajanje;
    private boolean verificiran;

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public BigDecimal getCijena() {
        return cijena;
    }

    public void setCijena(BigDecimal cijena) {
        this.cijena = cijena;
    }

    public int getTrajanje() {
        return trajanje;
    }

    public void setTrajanje(int trajanje) {
        this.trajanje = trajanje;
    }

    public boolean isVerificiran() {
        return verificiran;
    }

    public void setVerificiran(boolean verificiran) {
        this.verificiran = verificiran;
    }
    
    
}
