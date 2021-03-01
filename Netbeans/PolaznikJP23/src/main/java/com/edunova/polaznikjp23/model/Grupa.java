/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.ManyToMany;

/**
 *
 * @author Daniel
 */
@javax.persistence.Entity
public class Grupa extends com.edunova.polaznikjp23.model.Entitet {
    
    
    private String naziv;
    @javax.persistence.ManyToOne
    private Smjer smjer;
    @javax.persistence.ManyToOne
    private Predavac predavac;
    private java.util.Date datumPocetka;
    private int brojPolaznika;
    @ManyToMany
    private java.util.List<Polaznik> polaznici = new ArrayList<>();

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public Smjer getSmjer() {
        return smjer;
    }

    public void setSmjer(Smjer smjer) {
        this.smjer = smjer;
    }

    public Predavac getPredavac() {
        return predavac;
    }

    public void setPredavac(Predavac predavac) {
        this.predavac = predavac;
    }

    public Date getDatumPocetka() {
        return datumPocetka;
    }

    public void setDatumPocetka(Date datumPocetka) {
        this.datumPocetka = datumPocetka;
    }

    public int getBrojPolaznika() {
        return brojPolaznika;
    }

    public void setBrojPolaznika(int brojPolaznika) {
        this.brojPolaznika = brojPolaznika;
    }

    public List<Polaznik> getPolaznici() {
        return polaznici;
    }

    public void setPolaznici(List<Polaznik> polaznici) {
        this.polaznici = polaznici;
    }
    
    
}
