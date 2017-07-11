<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.chaycao.jspservletbbs.control.impl.ArticleImpl" %>
<%@ page import="com.chaycao.jspservletbbs.bean.Article" %>
<%@ page import="java.lang.Integer" %>
<%@ page import="com.chaycao.jspservletbbs.bean.Comment" %>
<%@ page import="com.chaycao.jspservletbbs.control.impl.CommentImpl" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

</head>

<body>
    用户名：<%=session.getAttribute("userName")%><br>
    <a href="articleList.jsp">返回</a>
    <%
        String query = request.getQueryString();
        String[] reslut = query.split("=");
        int index = Integer.parseInt(reslut[1]);
        Article article = ArticleImpl.INSTANCE.selectByIndex(index);
    %>
    <div>
        <table>
            <tr>
                <th>标题：</th>
                <th><%= article.getTitle() %></th>
            </tr>
            <tr>
                <th>作者：</th>
                <th><%= article.getUserName() %></th>
            </tr>
            <tr>
                <th>发表时间：</th>
                <th><%= article.getTime() %></th>
            </tr>
        </table>
        <%= article.getContext() %>
    </div>


    <div>
        评论区：<br>
        <%
            List<Comment> commentList = CommentImpl.INSTANCE.selectByArticleId(article.getId());
            for (Comment comment:
                    commentList) {
        %>
        <tr>
            <th> <%=comment.getUserName()%> : <%=comment.getContext()%></th>
        </tr>
        <tr>
            <th><%=comment.getTime()%></th>
        </tr>
        <br>
        <%
            }
        %>
    </div>

    <div>
        <form name="addComment" action="addComment" method="post">
            <table>
                <tr>
                    <textarea name="comment" rows="2" cols="30">请输入评论...</textarea>
                </tr>
                <!-- 文章的ID -->
                <input type="hidden" name="articleId"  value="<%=article.getId()%>">
                <input type="hidden" name="index"  value="<%=index%>">
                <tr>
                    <input type="submit" name="submit" value="提交">
                </tr>
            </table>
        </form>

    </div>

</body>
</html>
