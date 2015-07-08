<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/23
  Time: 下午4:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>Page Redirection</h1>
</center>
<%
    // 重定向到新地址
    String site = new String("http://www.w3cschool.cc");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", site);
%>
</body>
</html>
