package com.sed.domain;

import javax.persistence.*;

@Entity
public class Division {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer id;

    private String divName;
    private String contact;
    private String chef;

    public Division(){}

    public Division(String divName, String contact, String chef) {
        this.divName = divName;
        this.contact = contact;
        this.chef = chef;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDivName() {
        return divName;
    }

    public void setDivName(String divName) {
        this.divName = divName;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getChef() {
        return chef;
    }

    public void setChef(String chef) {
        this.chef = chef;
    }
}
