<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Doglister" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>All loving dogs in need of a home!</h1>

    <form action="/ads" method="get">
        <label for="search"></label>
        <input id="search" type="search" name="search" placeholder="Search" class="form-control">
        <br>
        <button id="submit" type="submit" class="btn btn-primary">Search</button>
    </form>

    <p>Click here if you want to roll the dice and see what dog fate brings you!</p>
    <a href="/random_show"><button class="btn btn-primary">Random Dog Generator!</button></a>
    <br>
    <hr>


    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2> <a href="/show?id=${ad.id}">${ad.title}</a></h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
