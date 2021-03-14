/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.controller;

import com.edunova.polaznikjp23.model.Grupa;
import com.edunova.polaznikjp23.util.EdunovaException;
import java.util.List;

/**
 *
 * @author Daniel
 */
public class ObradaGrupa extends Obrada<Grupa> {

    @Override
    public List<Grupa> getPodaci() {
        return session.createQuery("from Grupa").list();
    }

    @Override
    protected void kontrolaCreate() throws EdunovaException {
        
    }

    @Override
    protected void kontrolaUpdate() throws EdunovaException {
       
    }

    @Override
    protected void kontrolaDelete() throws EdunovaException {
       
    }
}
