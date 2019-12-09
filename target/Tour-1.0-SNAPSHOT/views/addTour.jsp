<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Yura
  Date: 14.03.2017
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html0"; charset="utf-8">
    <title>Add</title>
    <link rel="stylesheet" href="/resources/css/settings.css">
</head>
<body>

<div class="login">
    <h1 align="center"><a href="/">Home</a></h1>
    <form action="" method="post">
        <input name="TourtourTitle" id="tourTitle" type="text" placeholder="Назва туру" required>
        <input name="Tourvenue" id="venue" type="text" placeholder="Місце зустрічі" required>
        <input name="TourtypeTours" id="typeTours" type="text" placeholder="Тип" required>
        <input name="Tourduration" id="duration" type="text" placeholder="Тривалість (00:00:00)" required>
        <input name="TourstartTour" id="startTour" type="text" placeholder="Початок (yyyy-mm-dd)" required>
        <input name="Tourprice" id="price" type="text" placeholder="Ціна(грн)" required>
        <button type="submit" class="btn btn-primary btn-block btn-large">Додати</button>
    </form>
</div>
</body>
</html>
