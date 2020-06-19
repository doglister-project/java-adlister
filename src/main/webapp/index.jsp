<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body class="landing">
<div class="">
    <h1>All loving dogs in need of a home!</h1>
    <br><br>
    <h4>“Dogs are not our whole life, but they make our lives whole.” – Roger Caras</h4>

    <br><br><br><br><br><br><br><br><br><br><br><br>
        <a href="/ads"><h4>Click here if you want visit our kennel! <i class="fas fa-paw"></i></h4></a>
</div>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <br><br>
    </div>
</body>
</html>
