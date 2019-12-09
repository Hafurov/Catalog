<%--
  Created by IntelliJ IDEA.
  User: Yura
  Date: 16.03.2017
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/settings.css">
    <title>Edit</title>
</head>
<body>
<h1 align="center"><a href="/">Home</a></h1>
<div class="login">
<form action="/tour/edit" method="post">

    <input name="Tourtid" id="idTour" type="text" value="${tourism.idTour}" hidden >

    <input name="TourtourTitle" id="tourTitle" type="text" value="${tourism.tourTitle}" >

    <input name="Tourvenue" id="venue" type="text" value="${tourism.venue}" >

    <input name="TourtypeTours" id="typeTours" type="text" value="${tourism.typeTours}">

    <input name="Tourduration" id="duration" type="text" value="${tourism.duration}">

    <input name="TourstartTour" id="startTour" type="text" value="${tourism.startTour}">

    <input name="Tourprice" id="price" type="text" value="${tourism.price}">

    <button type="submit" class="btn btn-primary btn-block btn-large">Edit</button>

</form>
</div>

</body>
</html>
