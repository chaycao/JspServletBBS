<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="com.chaycao.jspservletbbs.control.impl.UserImpl" %>
<%@ page import="com.chaycao.jspservletbbs.bean.Article" %>
<%@ page import="com.chaycao.jspservletbbs.control.impl.ArticleImpl" %>
<html>
<head>

</head>

<body>


    用户名：<%=session.getAttribute("userName")%><br>
    <a href="articleList.jsp">返回</a>
    <form action="addArticle" method="post">
        <table>
            <tr>
                <th>标题：</th>
                <input type="text" name="title">
            </tr>
            <tr>
                <th>内容：</th>
                <th><textarea name="comment" cols="30" rows="10">请在此输入内容...</textarea></th>
            </tr>
            <tr>
                <input type="submit" value="发表" name="submit">
            </tr>
        </table>
    </form>

</body>
</html>
