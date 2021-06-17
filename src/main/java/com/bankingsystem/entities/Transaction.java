package com.bankingsystem.entities;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 *
 * @author Awanish kumar singh
 */
@Entity
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    int receiverID;
    int amount;
    Date date;
    @OneToOne(mappedBy = "transaction")
    Customer customer;

    public Transaction(int id, int receiverID, int amount, Date date, Customer customer) {
        this.id = id;
        this.receiverID = receiverID;
        this.amount = amount;
        this.date = date;
        this.customer = customer;
    }

    public Transaction(int receiverID, int amount, Date date, Customer customer) {
        this.receiverID = receiverID;
        this.amount = amount;
        this.date = date;
        this.customer = customer;
    }

    public Transaction() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getReceiverID() {
        return receiverID;
    }

    public void setReceiverID(int receiverID) {
        this.receiverID = receiverID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    

}
