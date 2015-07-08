<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/24
  Time: 下午4:23
  To change this template use File | Settings | File Templates.
--%>
<%
    String title = "User Agent";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%out.print(title);%></title>
</head>
<body>
<div align="center">
    <p>
        ${header["user-agent"]}
        <br>
        ${param["username"]}
    </p>
</div>
</body>
</html>
