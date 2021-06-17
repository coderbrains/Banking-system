package com.bankingsystem.dao;

import com.bankingsystem.entities.Customer;
import com.bankingsystem.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

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
    
    public static Customer getCustomer(String email, String password){
        
        Customer customer = null;
        
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();
        
        Query q = session.createQuery("from Customer where email =:e and password =:p");
        q.setParameter("e", email);
        q.setParameter("p", password);
        
        customer = (Customer)q.uniqueResult();
        
        t.commit();
        session.close();
        return customer;
    }


}
