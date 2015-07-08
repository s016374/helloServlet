<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/23
  Time: 下午3:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload file</title>
</head>
<body>
<h1>Up Load File</h1>
<form action="uploadservlet.jsp" method="post" enctype="multipart/form-data">
  <input type="file" name="file" size="50"><br>
  <input type="submit" value="Upload File">
</form>
</body>
</html>
