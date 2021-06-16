/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bankingsystem.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Awanish kumar singh
 */
@Entity
public class User {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;
    
    @Column(length = 50)
    private String userName;
    @Column(length = 50)
    private String userPassword;
    @Column(length = 50)
    private String userEmail;
    @Column(length = 15)
    private String userphone;
    @Column(length = 20)
    private String userPic;
    @Column(length = 100)
    private String userAddress;
    @Column(length = 10)
    private String usertype;

    public User(int userId, String userName, String userPassword, String userEmail, String userphone, String userPic, String usertype) {
        this.userId = userId;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userphone = userphone;
        this.userPic = userPic;
        this.userAddress = userAddress;
        this.usertype = usertype;
    }

    public User(String userName, String userPassword, String userEmail, String userphone, String userPic, String userAddress,String category) {
        this.userName = userName;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userphone = userphone;
        this.userPic = userPic;
        this.userAddress = userAddress;
        this.usertype = usertype;
    }

    public User() {
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    
    
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + ", userEmail=" + userEmail + ", userphone=" + userphone + ", userPic=" + userPic + ", userAddress=" + userAddress + '}';
    }

    
}
