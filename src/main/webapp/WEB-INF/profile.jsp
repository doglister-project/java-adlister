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

<div class="container d-flex">
    <h1 class="text-justify">Welcome, ${sessionScope.user.username}!</h1>
</div>
<div class="container">
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6 d-flex justify-content-between">
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
