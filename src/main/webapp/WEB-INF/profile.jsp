<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="jumbotron d-none d-block">
    <h1 class="text-justify">Welcome, ${sessionScope.user.username}!</h1>
    <br>
<%--    <a href="/update?user"><button class="btn btn-primary">Update User Profile</button></a>--%>
    <a href="/update?user">
        <button id="submit" type="submit" class="bone-btn profile">
        <div class="c1"></div>
        <div class="c2"></div>
        <div class="c3"></div>
        <div class="c4"></div>
        <div class="b1">
            <div class="b2">
                Update Profile
            </div>
        </div>
    </button>
    </a>
</div>

<div class="container">
    <h3>Your Listings:</h3>
    <c:forEach var="ad" items="${ads}">
        <div class=" over col-md-6 d-flex justify-content-between">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <a href="/edit?id=${ad.id}">
                <button type="button" class="btn btn-primary">Edit/Delete</button>
            </a>
        </div>
    </c:forEach>
</div>
</body>
</html>
