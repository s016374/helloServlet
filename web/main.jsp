<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/17
  Time: 下午2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Using JavaBeans in JSP</title>
</head>
<body>
<div>
    <h2 style="text-align: center">Using JavaBeans in JSP</h2>

    <jsp:useBean id="test" class="ztx.qa.TestBean"/>

    <jsp:setProperty name="test"
                     property="message"
                     value="Hello JSP..."/>

    <p style="text-align: center">Got message....</p>

    <p style="text-align: center">
        <jsp:getProperty name="test" property="message"/>
    </p>

</div>
</body>
</html>
