/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.controller;

import com.edunova.polaznikjp23.model.Predavac;
import com.edunova.polaznikjp23.util.EdunovaException;
import java.util.List;

/**
 *
 * @author Korisnik
 */
public class ObradaPredavac extends ObradaOsoba<Predavac>{

    @Override
    public List<Predavac> getPodaci() {
        return session.createQuery("from Predavac").list();
    }
    
      @Override
    protected void kontrolaCreate() throws EdunovaException {
       super.kontrolaCreate();
       //onda moje kontrole
    }

    @Override
    protected void kontrolaUpdate() throws EdunovaException {
        super.kontrolaUpdate();
        //onda moje kontrole
    }

    @Override
    protected void kontrolaDelete() throws EdunovaException {
        
    }
    
}
