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

    public static int deleteUser(int userid) {
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();
        int executeUpdate = 0;

        try {

            Query q = session.createQuery("delete from Customer where id =: i");
            q.setParameter("i", userid);
            executeUpdate = q.executeUpdate();

        } catch (Exception e) {
            t.commit();
            session.close();
            e.printStackTrace();
        }

        t.commit();
        session.close();
        return executeUpdate;
    }

    public static List<Customer> getAllCustomers() {
        List list = null;
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Customer");
        list = q.list();

        t.commit();
        session.close();

        return list;
    }

    public static Customer getCustomerbyID(int id) {
        Customer customer = null;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Customer where id =: i");
        q.setParameter("i", id);
        customer = (Customer) q.uniqueResult();

        t.commit();
        session.close();
        return customer;
    }

    public static void deposit(int customerid, int amount) {

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Customer c = getCustomerbyID(customerid);

        int camount = c.getAmount();
        camount += amount;
        c.setAmount(camount);
        session.update(c);
        t.commit();
        session.close();//73 7000 7000

    }

    public static void updatebalance(Customer customer, int amount) {

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        int amountt = customer.getAmount();
        amountt -= amount;
        customer.setAmount(amountt);
        session.update(customer);

        t.commit();
        session.close();
    }

    public static boolean withdraw(int customerid, int amount) {

        boolean result = false;

        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Customer c = getCustomerbyID(customerid);

        int camount = c.getAmount();

        if (camount < amount) {
            result = false;
        } else {
            camount -= amount;
            c.setAmount(camount);
            session.update(c);
            result = true;
        }

        t.commit();
        session.close();//73 7000 7000
        return result;
    }

    public static Customer getCustomerByAdhar(String adhar) {

        Customer customer = null;
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Customer where aadhar_number =: i");
        q.setParameter("i", adhar);
        customer = (Customer) q.uniqueResult();
        t.commit();
        session.close();
        return customer;

    }

    public static Customer getCustomerByMobile(String mobile) {

        Customer customer = null;
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Customer where mobile =: i");
        q.setParameter("i", mobile);
        customer = (Customer) q.uniqueResult();
        t.commit();
        session.close();
        return customer;

    }

    public static Customer getCustomerByEmail(String email) {

        Customer customer = null;
        Session session = FactoryProvider.getFactory().openSession();
        Transaction t = session.beginTransaction();

        Query q = session.createQuery("from Customer where email =: i");
        q.setParameter("i", email);
        customer = (Customer) q.uniqueResult();
        t.commit();
        session.close();
        return customer;

    }

}
