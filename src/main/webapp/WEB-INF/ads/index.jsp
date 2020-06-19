<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Doglister"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="jumbotron d-none d-block">
    <h1>All loving dogs in need of a home!</h1>
    <br>
    <form action="/ads" class="d-inline " method="get">
        <input id="search" type="search" name="search" placeholder="Search" class="form-control">
        <button id="submit" type="submit" class="bone-btn index">
            <div class="c1"></div>
            <div class="c2"></div>
            <div class="c3"></div>
            <div class="c4"></div>
            <div class="b1">
                <div class="b2">
                    Search
                </div>
            </div>
        </button>
    </form>
    <br>
    <a href="/random_show"><p>Click here if you want to roll the dice and see which of our <i class="fas fa-paw"></i>PAW-SOME<i class="fas fa-paw"></i> friends fate brings you!</p></a>
    <br>
<%--    <a href="/random_show">--%>
<%--        <button class="btn btn-primary">Random Dog Generator!</button>--%>
<%--    </a>--%>
    <br>
</div>
<div class="over">
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><a href="/show?id=${ad.id}" class="post-link">${ad.title}</a></h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
