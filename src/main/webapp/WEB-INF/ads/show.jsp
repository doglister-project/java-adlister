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
<%--    <c:if value="${ad}" --%>
    <h1>Here Is An ad!</h1>
    <h2>${ad.id}</h2>
    <h2>${user.username}</h2>
    <h2>${ad.title}</h2>
    <p>${ad.description}</p>

</div>

</body>
</html>
