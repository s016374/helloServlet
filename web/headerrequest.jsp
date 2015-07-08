<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/18
  Time: 上午10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HTTP Header Request Example</title>
</head>
<body>
<h2>HTTP Header Request Example</h2>
<table width="100%" border="1" align="center">
    <tr bgcolor="#949494">
        <th>Header Name</th>
        <th>Header Value(s)</th>
    </tr>
        <%
   Enumeration headerNames = request.getHeaderNames();
   while(headerNames.hasMoreElements()) {
      String paramName = (String)headerNames.nextElement();
      String paramValue = request.getHeader(paramName);
      %>
    <%--out.print("<tr><td>" + paramName + "</td>\n");--%>
    <tr>
        <td><%=paramName%>
        </td>
        <%--out.println("<td> " + paramValue + "</td></tr>\n");--%>
        <td><%=paramValue%>
        </td>
    </tr>
        <%
   }
%>
</body>
</html>
