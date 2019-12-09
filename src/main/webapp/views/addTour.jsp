<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <input name="TourtourTitle" id="tourTitle" type="text" placeholder="Назва " required>
        <input name="Tourvenue" id="venue" type="text" placeholder="текст" required>
        <input name="TourtypeTours" id="typeTours" type="text" placeholder="текст" required>
        <input name="Tourduration" id="duration" type="text" placeholder="Опис:" required>
        <input name="TourstartTour" id="startTour" type="text" placeholder="Район:" required>
        <input name="Tourprice" id="price" type="text" placeholder="від тис грн:" required>
        <button type="submit" class="btn btn-primary btn-block btn-large">Додати</button>
    </form>
</div>
</body>
</html>
