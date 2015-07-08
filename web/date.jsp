<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/17
  Time: 下午2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>date</title>
</head>
<body>
<%
    response.setIntHeader("Refresh", 1);
%>
<p>
    Today's date: <%= (new java.util.Date()).toString()%>
</p>
</body>
</html>
