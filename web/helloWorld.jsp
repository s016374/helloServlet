<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/17
  Time: 上午9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
<h1>Hello World</h1>
<%
    out.println("Your IP address is : " + request.getRemoteAddr());
%>
<p>
    Today's date : <%=(new java.util.Date()).toString()%>
</p>
<%!
    int day = 3;
    int fontSize;
%>
<%
    switch (day) {
        case 0:
            out.println("It\'s Sunday.");
            break;
        case 1:
            out.println("It\'s Monday.");
            break;
        case 2:
            out.println("It\'s Tuesday.");
            break;
        case 3:
            out.println("It\'s Wednesday.");
            break;
        case 4:
            out.println("It\'s Thursday.");
            break;
        case 5:
            out.println("It\'s Friday.");
            break;
        default:
            out.println("It's Saturday.");
    }
%>
<hr>
<%
    for (fontSize = 1; fontSize <= 3; fontSize++) { %>
<font color="green" size="<%= fontSize %>">
    JSP Tutorial
</font><br/>
<%
    }
%>
<hr>
<%@include file="h1.html"%>
<jsp:include page="h1.html" flush="true"></jsp:include>
</body>
</html>
