<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing One Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<div class="container">
    <br><br>
    <h2>${ad.title}</h2>
    <h2>Posted by: ${user.username}</h2>
    <p>${ad.description}</p>
    <a href="/ads"><button class="btn">Back To All Dog Ads!</button></a>
</div>

</body>
</html>
