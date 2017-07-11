package com.chaycao.jspservletbbs.bean;

import java.util.Date;

/**
 * Created by chaycao on 2017/7/9.
 */
public class Article {
    private int id;
    private String title;
    private String context;
    private Date time;
    private int userId;
    private String userName;

    public Article(int id, String title, String context, Date time, String userName) {
        this.id = id;
        this.title = title;
        this.context = context;
        this.time = time;
        this.userName = userName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
