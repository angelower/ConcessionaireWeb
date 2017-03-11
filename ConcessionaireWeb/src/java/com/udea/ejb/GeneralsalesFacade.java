/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Generalsales;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author decho
 */
@Stateless
public class GeneralsalesFacade extends AbstractFacade<Generalsales> implements GeneralsalesFacadeLocal {

    @PersistenceContext(unitName = "ConcessionaireWebPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public GeneralsalesFacade() {
        super(Generalsales.class);
    }
    
}
