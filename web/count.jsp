<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/23
  Time: 下午4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hit counter</title>
</head>
<body>
<%
    Integer hitsCount =
            (Integer) application.getAttribute("hitCounter");
    if (hitsCount == null || hitsCount == 0) {
       /* 第一次访问 */
        out.println("Welcome to my website!");
        hitsCount = 1;
    } else {
       /* 返回访问值 */
        out.println("Welcome back to my website!");
        hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<p>Total number of visits: <%= hitsCount%>
</p>
</body>
</html>
