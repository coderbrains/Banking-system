package com.bankingsystem.dao;

import com.bankingsystem.entities.Customer;
import com.bankingsystem.helper.FactoryProvider;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 * @author Awanish kumar singh
 */
public class CustomerDao {

    public static boolean saveCustomer(Customer customer) {

        boolean check = false;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        try {

            session.save(customer);
            check = true;
            tx.commit();
            session.close();

        } catch (Exception e) {
            
            tx.commit();
            session.close();
            e.printStackTrace();
        }

        return check;
    }

    public static Customer getCustomer(String email, String password) {

        Customer customer = null;
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Customer where email =:e and password =:p");
        q.setParameter("e", email);
        q.setParameter("p", password);

        customer = (Customer) q.uniqueResult();

        t.commit();
        session.close();
        return customer;
    }
    
    public static int deleteUser(int userid){
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();
        int executeUpdate = 0;

        try{
            
            Query q = session.createQuery("delete from Customer where id =: i");
            q.setParameter("i", userid);
            executeUpdate = q.executeUpdate();
            
        }catch(Exception e){
            t.commit();
            session.close();
            e.printStackTrace();
        }
        
        t.commit();
        session.close();
        return executeUpdate;
    }
    
    
    public static List<Customer> getAllCustomers(){
        List list = null;
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();
        
        Query q = session.createQuery("from Customer");
        list = q.list();
        
        t.commit();
        session.close();
        
        return list;
    }

}
