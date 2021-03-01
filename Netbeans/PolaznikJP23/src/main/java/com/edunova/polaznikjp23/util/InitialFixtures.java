
package com.edunova.polaznikjp23.util;

import com.edunova.polaznikjp23.model.Grupa;
import com.edunova.polaznikjp23.model.Polaznik;
import com.edunova.polaznikjp23.model.Predavac;
import com.edunova.polaznikjp23.model.Smjer;
import com.github.javafaker.Faker;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.hibernate.Session;

public class InitialFixtures {
    
    public static void start() {
        Session s = HibernateUtil.getSession();
        s.beginTransaction();
        
        Smjer java = new Smjer();
        java.setNaziv("Računalni programer");
        java.setCijena(new BigDecimal(5900.99));
        java.setTrajanje(130);
        java.setVerificiran(false);
        
        s.save(java);
        
        Smjer php = new Smjer();
        php.setNaziv("WP designer");
        php.setCijena(new BigDecimal(4900.99));
        php.setTrajanje(130);
        php.setVerificiran(false);
        
        s.save(php);
        
        Faker faker = new Faker();
        
        
        
        
        List<Polaznik> polaznici = new ArrayList<>();
        
        Polaznik p;
        for(int i=0; i<100; i++) {
            p=new Polaznik();
            p.setIme(faker.name().firstName());
            p.setPrezime(faker.name().lastName());
            s.save(p);
            polaznici.add(p);
        }
        
        Predavac predavac = new Predavac();
        predavac.setIme(faker.name().firstName());
        predavac.setPrezime(faker.name().lastName());
        s.save(predavac);
        
        Grupa jp23 = new Grupa();
        jp23.setNaziv("RP");
        jp23.setSmjer(java);
        jp23.setPredavac(predavac);
        
        Collections.shuffle(polaznici);
        for(int i=0; i<19; i++) {
            jp23.getPolaznici().add(polaznici.get(i));
        }
        s.save(jp23);
        
        
        
        Grupa pp23 = new Grupa();
        pp23.setNaziv("WD");
        pp23.setSmjer(php);
        pp23.setPredavac(predavac);
        
        Collections.shuffle(polaznici);
        for(int i=0; i<16; i++) {
            pp23.getPolaznici().add(polaznici.get(i));
        }
        s.save(pp23);
        
        
        s.getTransaction().commit();
    }
    public static void unesiSmjer(Smjer smjer, String naziv, BigDecimal cijena, int trajanje, boolean isVerified){
        smjer.setNaziv(naziv);
        smjer.setCijena(cijena);
        smjer.setTrajanje(trajanje);
        smjer.setVerificiran(isVerified);
        
    }
    public static void unesiGrupu(Grupa grupa, String naziv, Smjer smjer, Predavac predavac){
        grupa.setNaziv(naziv);
        grupa.setSmjer(smjer);
        grupa.setPredavac(predavac);
    }
}
