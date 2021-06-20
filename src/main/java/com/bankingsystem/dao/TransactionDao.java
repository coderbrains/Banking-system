/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bankingsystem.dao;

import com.bankingsystem.entities.Customer;
import org.hibernate.Transaction;
import com.bankingsystem.helper.FactoryProvider;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author Awanish kumar singh
 */
public class TransactionDao {

    public static List<com.bankingsystem.entities.Transaction> getAllTransaction() {

        List<com.bankingsystem.entities.Transaction> list = null;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Transaction");
        list = q.list();

        t.commit();
        session.close();

        return list;

    }

    public static boolean sendAdhar(String adhar, int amount) {

        boolean result = false;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Customer customer = CustomerDao.getCustomerByAdhar(adhar);

        if (customer != null) {
            int currentamount = customer.getAmount();
            currentamount += amount;
            customer.setAmount(currentamount);
            session.update(customer);
            result = true;

        }
        t.commit();
        session.close();
        return result;
    }

    public static boolean sendMobile(String mobile, int amount) {

        boolean result = false;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Customer customer = CustomerDao.getCustomerByMobile(mobile);

        if (customer != null) {
            int currentamount = customer.getAmount();
            currentamount += amount;
            customer.setAmount(currentamount);
            session.update(customer);
            result = true;

        }
        t.commit();
        session.close();
        return result;
    }

    public static boolean sendEmail(String email, int amount) {

        boolean result = false;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Customer customer = CustomerDao.getCustomerByEmail(email);

        if (customer != null) {
            int currentamount = customer.getAmount();
            currentamount += amount;
            customer.setAmount(currentamount);
            session.update(customer);
            result = true;

        }
        t.commit();
        session.close();
        return result;
    }

    public static boolean sendPan(String pan, int amount) {

        boolean result = false;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Customer customer = CustomerDao.getCustomerByPan(pan);

        if (customer != null) {
            int currentamount = customer.getAmount();
            currentamount += amount;
            customer.setAmount(currentamount);
            session.update(customer);
            result = true;

        }
        t.commit();
        session.close();
        return result;
    }

    public static List<com.bankingsystem.entities.Transaction> getAllTransactionBycustomer(Customer c) {

        List list = null;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Transaction where customer =: c");
        q.setParameter("c", c);
        list = q.list();

        t.commit();
        session.close();

        return list;

    }

}
