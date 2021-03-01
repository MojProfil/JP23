/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edunova.polaznikjp23.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 *
 * @author Daniel
 */
// ovu klasu naslijeđuju ostale 
@MappedSuperclass
public abstract class Entitet {
    
    // id je primarni ključ
    // generetedvalue - strategy type identity - auto increment id-a
    
//    @javax.persistence.Column(name = "sifra", length = 11)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
       
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
       
       
    
}
