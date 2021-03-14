
package com.edunova.polaznikjp23.controller;

import com.edunova.polaznikjp23.model.Smjer;
import com.edunova.polaznikjp23.util.EdunovaException;
import java.math.BigDecimal;
import java.util.List;

// implementirati abstraktne metode
public class ObradaSmjer extends Obrada<Smjer>{

    public ObradaSmjer(){
        super();
    }
    public ObradaSmjer(Smjer s){
        super(s);
    }
    
    @Override
    public List<Smjer> getPodaci() {
        //https://docs.jboss.org/hibernate/orm/3.3/reference/en/html/queryhql.html
       return session.createQuery("from Smjer").list();
    }

    @Override
    protected void kontrolaCreate() throws EdunovaException {
       //kontrolaNaziv();
       kontrolaCijena();
    }

    @Override
    protected void kontrolaUpdate()throws EdunovaException {
       kontrolaCreate();
    }

    @Override
    protected void kontrolaDelete()throws EdunovaException {
       
    }
    
    private void kontrolaNaziv() throws EdunovaException{
       kontrolaNazivPostavljen();
       kontrolaNazivDuzina();
    }
    
    private void kontrolaNazivPostavljen() throws EdunovaException{
        if(entitet.getNaziv()==null 
               || entitet.getNaziv().isEmpty()){
           throw new EdunovaException("Naziv mora biti postavljen");
       }
    }

    private void kontrolaNazivDuzina()throws EdunovaException {
        if(entitet.getNaziv().length()>50){
            throw new EdunovaException("Naziv predugačak");
        }
    }
    
    private void kontrolaCijena() throws EdunovaException{
        if(entitet.getCijena()==null 
               || entitet.getCijena().compareTo(BigDecimal.ZERO)<=0){
           throw new EdunovaException("Cijena mora biti postavljena i veća od 0");
       }
    }
    
}
