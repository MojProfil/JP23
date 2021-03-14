/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.controller;

import com.edunova.polaznikjp23.model.Osoba;
import com.edunova.polaznikjp23.util.EdunovaException;

/**
 *
 * @author Korisnik
 */
public abstract class ObradaOsoba<T extends Osoba> extends Obrada<T>{

    @Override
    protected void kontrolaCreate() throws EdunovaException {
       kontrolaOIB();
    }

    @Override
    protected void kontrolaUpdate() throws EdunovaException {
        kontrolaOIB();
    }
    
    private void kontrolaOIB() throws EdunovaException{
        if(!oibValjan(entitet.getOib())){
            throw new EdunovaException("OIB nije formalno ispravan");
        }
    }
    
    
    private boolean oibValjan(String oib){
        //https://regos.hr/app/uploads/2018/07/KONTROLA-OIB-a.pdf
        
        
        if (oib==null || oib.length() != 11) {
            return false;
        }

        try {
            Long.parseLong(oib);
        } catch (NumberFormatException e) {
            return false;
        }

        int a = 10;
        for (int i = 0; i < 10; i++) {
            a = a + Integer.parseInt(oib.substring(i, i + 1));
            a = a % 10;
            if (a == 0) {
                a = 10;
            }
            a *= 2;
            a = a % 11;
        }
        int kontrolni = 11 - a;
        if (kontrolni == 10) {
            kontrolni = 0;
        }
        return kontrolni == Integer.parseInt(oib.substring(10));

    }
    
    }
    
    

   
    
    
   

