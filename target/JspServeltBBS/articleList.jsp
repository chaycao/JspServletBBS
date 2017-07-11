<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="com.chaycao.jspservletbbs.control.impl.UserImpl" %>
<%@ page import="com.chaycao.jspservletbbs.bean.Article" %>
<%@ page import="com.chaycao.jspservletbbs.control.impl.ArticleImpl" %>
<html>
<head>

</head>

<body>
    用户名：<%=session.getAttribute("userName")%><br/>
    <a href="articleEdit.jsp">写文章</a>
    <table border="1" >
        <tr>
            <td>标题</td>
            <td>发表时间</td>
            <td>作者</td>
        </tr>
        <%
            List<Article> articleList = ArticleImpl.INSTANCE.selectAll();
            int i = 0;
            for (Article article:
                    articleList) {
        %>
        <tr>
            <td> <a href="articleContext.jsp?index=<%= i++ %>"> <%=article.getTitle()%> </a> </td>
            <td> <%=article.getTime()%></td>
            <td> <%=article.getUserName()%></td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
