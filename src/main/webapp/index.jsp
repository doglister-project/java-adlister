<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<div class="jumbotron jumbo-landing d-none d-block">
    <h1>All loving dogs in need of a home!</h1>
    <br><br>
    <p>“Dogs are not our whole life, but they make our lives whole.” – Roger Caras</p>

    <br><br><br><br><br><br><br><br><br><br><br><br>
        <a href="/ads"><p>Click here if you want visit our kennel! <i class="fas fa-paw"></i></p></a>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <br><br>
    </div>
</body>
</html>
