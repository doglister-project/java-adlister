<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Profile" />
    </jsp:include>
    <style>
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Edit Profile</h1>

    <form method="post" action="update?user=${sessionScope.user.username}">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" value="${sessionScope.user.username}" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" value="${sessionScope.user.email}" name="email" class="form-control" type="email">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" value="${sessionScope.user.password}" name="password" class="form-control"
                   type="password">
        </div>

        <input type="submit" class="btn btn-primary btn-block" value="Submit Changes">
    </form>
</div>

</body>
</html>