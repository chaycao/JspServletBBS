package com.chaycao.jspservletbbs.control.inter;

import com.chaycao.jspservletbbs.bean.Article;
import com.chaycao.jspservletbbs.bean.Comment;

import java.util.Date;
import java.util.List;

/**
 * @Author Chaycao【chaycao@163.com】
 * @Date 2017/7/11 17:50
 */
public interface CommentInter {

    /**
     * 添加评论
     * @param context
     * @param userId
     * @param articleId
     * @return
     */
    public boolean add (String context, int userId, int articleId);

    /**
     * 根据文章iD查询所有的评论
     * @param articleId
     * @return
     */
    public List<Comment> selectByArticleId (int articleId);
}
