<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/7/21
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello","Chao Xìn");
    dic.put("love","Tình Yêu");
    dic.put("zebra","Ngựa vằn");
    dic.put("game","Trò chơi");

    String search =  request.getParameter("search");

    String result = dic.get(search);
    request.setAttribute("result", result);
    request.setAttribute("search", search);

%>

<c:choose>
    <c:when test="${result != null}">
        <c:out value="${'Word: '}"/>
        <c:out value="${search}"/>
        <c:out value="${'         '}"/>
        <c:out value="${'Result: '}"/>
        <c:out value="${result}"/>
    </c:when>
    <c:otherwise>
        <c:out value="${'Not Found'}"/>
    </c:otherwise>
</c:choose>
</body>
</html>
