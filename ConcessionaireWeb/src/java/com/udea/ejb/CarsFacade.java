/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Cars;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author decho
 */


@Stateless
public class CarsFacade extends AbstractFacade<Cars> implements CarsFacadeLocal {

    @PersistenceContext(unitName = "ConcessionaireWebPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CarsFacade() {
        super(Cars.class);
    }

    @Override
    public boolean checkPlaca(String p) {
        
        Query q = em.createQuery("select a from Cars a" + "where a.placa=:p");
        q.setParameter("p", p);
        
        return q.getResultList().size()>0;
    }
    
}
