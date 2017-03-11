/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Generalsales;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author decho
 */
@Local
public interface GeneralsalesFacadeLocal {

    void create(Generalsales generalsales);

    void edit(Generalsales generalsales);

    void remove(Generalsales generalsales);

    Generalsales find(Object id);

    List<Generalsales> findAll();

    List<Generalsales> findRange(int[] range);

    int count();
    
}
