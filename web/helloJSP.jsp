<%--
  Created by IntelliJ IDEA.
  User: s016374
  Date: 15/6/9
  Time: 下午2:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" href="c1.css" rel="stylesheet">
    <title>helloJSP</title>
</head>
<body>
<jsp:plugin type="applet" codebase="dirname" code="MyApplet.class"
            width="60" height="80">
    <jsp:params name="fontcolor" value="red"/>
    <jsp:params name="background" value="black"/>

    <jsp:fallback>
        Unable to initialize Java Plugin
    </jsp:fallback>

</jsp:plugin>
</form>
</body>
</html>
