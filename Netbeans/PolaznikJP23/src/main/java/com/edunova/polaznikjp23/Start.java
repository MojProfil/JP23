/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23;


import com.edunova.polaznikjp23.model.Smjer;
import com.edunova.polaznikjp23.util.HibernateUtil;
import com.edunova.polaznikjp23.util.InitialFixtures;
import java.math.BigDecimal;
import java.util.Date;
import org.hibernate.Hibernate;
import org.hibernate.Session;

/**
 *
 * @author Daniel
 */
public class Start {
    public static void main(String[] args) {
      
        // ovo uvijek ostaje:
        // ako nema toga, neće u bazi kreirati bazu i pogledati stanje
        // Session s = HibernateUtil.getSession();
        
        // Smjer java = new Smjer();
       // java = InitialFixtures.unesiSmjer(java, BigDecimal.(5800.99), 130, false);
        
    //    System.out.println(s.getMetamodel().getEntities().size());
    
    InitialFixtures.start();
    
    
    }
}
