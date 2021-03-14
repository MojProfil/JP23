/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.controller;

import com.edunova.polaznikjp23.model.Operater;
import com.edunova.polaznikjp23.util.EdunovaException;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author Korisnik
 */
public class ObradaOperater extends ObradaOsoba<Operater>{

    /**
     * Autorizacija operatera na bazi
     * @param email email operatera kojeg želimo autorizirati
     * @param lozinka plain lozinka kao char[] koju je unio korisnik na formi
     * @return Instancu klase Operater ako operater s danim emailom postoji i lozinka
     * odgovara. Vraća null ukoliko operater ne postoji u bazi ili lozinka ne odgovara
     */
    public Operater autoriziraj(String email, char[] lozinka){
       
        Operater oper = (Operater)session
                .createQuery("from Operater o where o.email=:email")
                .setParameter("email", email)
                .getSingleResult();
        if(oper==null){
            return null;
        }
        return BCrypt.checkpw(new String(lozinka),oper.getLozinka()) ? oper : null;
    }
    
    
    @Override
    public List<Operater> getPodaci() {
        return session.createQuery("from Operater").list();
    }

    @Override
    protected void kontrolaDelete() throws EdunovaException {
    
    }
    
}
