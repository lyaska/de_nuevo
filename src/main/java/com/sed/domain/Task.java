package com.sed.domain;

import javax.persistence.*;

@Entity
public class Task {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String text;
    private String subject;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;
    private String executor;
    private String term;

    public Task() {
    }

    public Task(String text, String subject, User author, String executor, String term) {
        this.text = text;
        this.subject = subject;
        this.author = author;
        this.executor = executor;
        this.term = term;
    }

    public Task(String text, String subject, User user) {
        this.text = text;
        this.subject = subject;
        this.author = user;
    }

    public String getAuthorName(){
        return author != null ? author.getFirstName()+" "+ author.getSecondName() : "<none>";
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String getTerm() {
        if(term == null){
            return "none";
        }
        else return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getExecutor() {
        if(executor==null){
            return "none";
        }
        else return executor;
    }

    public void setExecutor(String executor) {
        this.executor = executor;
    }
}
