<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/23
  Time: 下午2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Setting Cookies</title>
</head>
<body>
<%
    // 为 first_name 和 last_name设置cookie
    Cookie firstName = new Cookie("first_name",
            request.getParameter("first_name"));
    Cookie lastName = new Cookie("last_name",
            request.getParameter("last_name"));

    // 设置cookie过期时间为24小时。
    firstName.setMaxAge(60 * 60 * 24);
    lastName.setMaxAge(60 * 60 * 24);

    // 在响应头部添加cookie
    response.addCookie(firstName);
    response.addCookie(lastName);
%>

<h1>Setting Cookies</h1>
<ul>
    <li><p><b>First Name:</b>
        <%= request.getParameter("first_name")%>
    </p></li>
    <li><p><b>Last Name:</b>
        <%= request.getParameter("last_name")%>
    </p></li>
</ul>
</body>
</html>
