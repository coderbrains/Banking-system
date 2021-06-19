/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bankingsystem.dao;

import org.hibernate.Transaction;
import com.bankingsystem.helper.FactoryProvider;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author Awanish kumar singh
 */

public class TransactionDao {
    
    public static List<com.bankingsystem.entities.Transaction> getAllTransaction(){
        
        List<com.bankingsystem.entities.Transaction> list = null;
        
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();
        
        Query q = session.createQuery("from Transaction");
        list = q.list();
        
        t.commit();
        session.close();
        
        return list;
        
    }

}