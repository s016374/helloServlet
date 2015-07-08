<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/9
  Time: 下午3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp2</title>
    <link type="text/css" rel="stylesheet" href="c1.css">
</head>
<body>
<p>response.sendRedirect("jsp2.jsp")</p>
<%
    response.sendError(555, "error");
%>
<table class="table1">
    <thead>
    <th>参数</th>
    <th>值</th>
    </thead>
    <tbody>
    </tbody>
</table>


<%--<P>para:<%=request.getParameter("para")%>--%>
<%--</P>--%>

<%--<P>male:<%=request.getParameter("male")%>--%>
<%--</P>--%>

<%--<P>female:<%=request.getParameter("female")%>--%>
<%--</P>--%>
</body>
</html>
