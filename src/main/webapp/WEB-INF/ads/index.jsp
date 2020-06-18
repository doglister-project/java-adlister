<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>
    <form action="/ads" method="get">
        <label for="search"></label>
        <input id="search" type="search" name="search" placeholder="Doggy Search">
        <button id="submit" type="submit">Search</button>
    </form>
    <a href="/random_show"><button>Random Dog Ad!</button></a>


    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2> <a href="/show?id=${ad.id}">${ad.title}</a></h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
