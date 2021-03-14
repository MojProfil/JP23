/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.util;

import com.edunova.polaznikjp23.model.Smjer;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author Daniel
 */
public class Test {
    
    public static void main(String[] args) {
        
        
        Set<String> set = new HashSet<>();
        set.add("Osijek");
        set.add("Zagreb");
        set.add("Osijek");
        
        Iterator<String> i = set.iterator();
        while(i.hasNext()){
            System.out.println(i.next());
        }
        
        
        for(String s: set){
            System.out.println(s);
        }
        
        Map<String,Smjer> map=new Hashtable<>();
        
        Smjer smjer=new Smjer();
        smjer.setNaziv("Prvi");
        
        map.put("kljuc1", smjer);
        
        smjer=new Smjer();
        smjer.setNaziv("Drugi");
               
         map.put("kljuc2", smjer);
         
         System.out.println(map.get("kljuc2").getNaziv());
         
         for(String kljuc: map.keySet()){
             System.out.println(kljuc + ": " + map.get(kljuc).getNaziv());
         }
        
    }
    
}
