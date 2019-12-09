<%@ taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
<style>
    table {
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        text-align: left;
        border-collapse: separate;
        border-spacing: 5px;
        background: #ECE9E0;
        color: #656665;
        border: 16px solid #ECE9E0;
        border-radius: 20px;
    }
    th {
        font-size: 18px;
        padding: 10px;
    }
    td {
        background: #F5D7BF;
        padding: 10px;
    }
</style>
<h1 align="center"><a href="/">Home</a></h1>
<table align="center">
    <tr>
        <th>Ім'я</th>
        <th>Прізвище</th>
        <th>Email</th>
        <th>Пароль</th>
        <th>Ban User</th>
    </tr>

    <u:forEach items="${userss}" var="user">
        <tr>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td>${user.password}</td>
            <td><a href="/ban/user/${user.idUser}"><span class="adminmenured">Delete</span></a></td>
        </tr>
    </u:forEach>

</table>

</body>
</html>
