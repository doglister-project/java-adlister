<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="container">
    <%--    <c:if value="${ad}" --%>
    <form method="POST" action="/edit">
        <h1>Edit/Delete your Ad</h1>
        <input type="hidden" name="ad_id" value="${ad.id}">
        <br>
        <p>Current Title: </p>
        <h2 class="text-danger">${ad.title}</h2>
        <label for="edit-title">Edit: Title</label>
        <input id="edit-title" name="edit-title" class="form-control text-danger" type="text" value="${ad.title}">
        <br>
        <hr>
        <p>Current Description: </p>
        <p class="text-danger">${ad.description}</p>
        <label for="edit-description">Edit: Description</label>
        <textarea id="edit-description" name="edit-description" class="form-control text-danger" type="text">${ad.description}</textarea>
        <br>
        <button type="submit" class="btn btn-primary">Edit</button>
    </form>
    <form method="POST" action="/delete">
        <input type="hidden" name="ad_id" value="${ad.id}">
        <a href="/delete">
            <button type="submit" class="btn btn-danger">Delete</button>
        </a>
    </form>


</div>

</body>
</html>
