package com.chaycao.jspservletbbs.servlet;

import com.chaycao.jspservletbbs.control.impl.ArticleImpl;
import com.chaycao.jspservletbbs.control.impl.CommentImpl;
import com.chaycao.jspservletbbs.control.inter.CommentInter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 * 发表评论
 * @Author Chaycao【chaycao@163.com】
 * @Date 2017/7/11 17:45
 */
@WebServlet(name="addComment"
        , urlPatterns = "/addComment")
public class AddCommentServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        String comment = request.getParameter("comment");
        int articleId  = Integer.parseInt(request.getParameter("articleId"));
        int index  = Integer.parseInt(request.getParameter("index"));
        HttpSession session = request.getSession();
        int userId = (Integer)session.getAttribute("userId");
        if(CommentImpl.INSTANCE.add(comment, userId, articleId)) {
            response.sendRedirect("articleContext.jsp?index=" + index);
        } else {
            response.sendRedirect("articleContext.jsp?index=" + index);
        }
    }
}
