package com.chaycao.jspservletbbs.bean;

import java.util.Date;

/**
 * Created by chaycao on 2017/7/9.
 */
public class Comment {
    private int id;
    private String context;
    private Date time;
    private int articleId;
    private int userId;
    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }



    public Comment(String context,Date time, String userName){
        this.context = context;
        this.time = time;
        this.userName = userName;
    }

    public Comment(int id, String context, Date time, int articleId, int userId) {
        this.id = id;
        this.context = context;
        this.time = time;
        this.articleId = articleId;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
