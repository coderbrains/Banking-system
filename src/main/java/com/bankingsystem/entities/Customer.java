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
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;
    @Column(length=50)
    private String name;
    private int age;
    @Column(length = 20)
    private String pan_number;
    @Column(length = 20)
    private String aadhar_number;
    @Column(length = 15)
    private String mobile;
    @Column(length = 20)
    private String city_name;
    @Column(length = 30)
    private String state_name;
    @Column(length = 10)
    private String pincode;
    @Column(length = 50)
    private String email;
    @Column(length = 50)
    private String password;
    @Column(length = 30)
    private String pic_name;
    @Column(length = 20)
    private String userType;

    public Customer() {
    }
    
    
    

    public Customer(int userId, String name, int age, String pan_number, String aadhar_number, String mobile, String city_name, String state_name, String pincode, String email, String password, String pic_name, String userType) {
        this.userId = userId;
        this.name = name;
        this.age = age;
        this.pan_number = pan_number;
        this.aadhar_number = aadhar_number;
        this.mobile = mobile;
        this.city_name = city_name;
        this.state_name = state_name;
        this.pincode = pincode;
        this.email = email;
        this.password = password;
        this.pic_name = pic_name;
        this.userType = userType;
    }

    public Customer(String name, int age, String pan_number, String aadhar_number, String mobile, String city_name, String state_name, String pincode, String email, String password, String pic_name) {
        this.name = name;
        this.age = age;
        this.pan_number = pan_number;
        this.aadhar_number = aadhar_number;
        this.mobile = mobile;
        this.city_name = city_name;
        this.state_name = state_name;
        this.pincode = pincode;
        this.email = email;
        this.password = password;
        this.pic_name = pic_name;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPan_number() {
        return pan_number;
    }

    public void setPan_number(String pan_number) {
        this.pan_number = pan_number;
    }

    public String getAadhar_number() {
        return aadhar_number;
    }

    public void setAadhar_number(String aadhar_number) {
        this.aadhar_number = aadhar_number;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public String getState_name() {
        return state_name;
    }

    public void setState_name(String state_name) {
        this.state_name = state_name;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPic_name() {
        return pic_name;
    }

    public void setPic_name(String pic_name) {
        this.pic_name = pic_name;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
}
