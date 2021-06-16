package com.bankingsystem.dao;

import com.bankingsystem.entities.Customer;
import com.bankingsystem.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * @author Awanish kumar singh
 */
public class CustomerDao {
    
    public static boolean saveCustomer(Customer customer){
        boolean check = false;
        
        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        
        session.save(customer);
        check = true;
        tx.commit();
        session.close();
        
        return check;
    }


}
