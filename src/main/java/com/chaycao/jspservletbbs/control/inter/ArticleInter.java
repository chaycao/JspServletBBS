package com.chaycao.jspservletbbs.control.inter;

import com.chaycao.jspservletbbs.bean.Article;

import java.util.List;

/**
 * @Author Chaycao【chaycao@163.com】
 * @Date 2017/7/11 17:09
 */
public interface ArticleInter {

    /**
     * 查询所有文章
     * @return
     */
    public List<Article> selectAll();

    /**
     * 添加文章
     * @param title 标题
     * @param comment 内容
     * @param userId 用户ID
     * @return
     */
    public boolean add(String title, String comment, int userId);

    /**
     * 根据文章列表中的索引查找文章
     * @param index
     * @return
     */
    public Article selectByIndex(int index);
}
