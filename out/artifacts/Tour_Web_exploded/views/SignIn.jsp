<%--
  Created by IntelliJ IDEA.
  User: Yura
  Date: 02.03.2017
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign-Up/Log-In</title>

    <link rel="stylesheet" href="/resources/css/styleregistration.css">

</head>
<body>
<div class="login-page">
    <div class="form">

        <form class="register-form" action="" method="post">
            <h1>Реєстрація</h1>
            <input name="userName" type="text" placeholder="Ім'я" required/>
            <input name="userSurname" type="text" placeholder="Прізвище" required/>
            <input name="userEmail" type="email" placeholder="Email" required/>
            <input name="userPassword" type="password" placeholder="Пароль" required/>
            <button type="submit">Створити</button>
            <p class="message">Вже зареєстровані? <a href="#">Увійти</a></p>
        </form>

        <form class="login-form" action="/loginproces" method="post">
            <h1>Вхід</h1>
            <input name="username" type="email" placeholder="Email" required/>
            <input name="password" type="password" placeholder="Пароль" required/>
            <button type="submit">Увійти</button>
            <p class="message">Не зареєстровані? <a href="#">Створити акаунт</a></p>
        </form>

    </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="/resources/js/qwertyasd.js"></script>





<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.map"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/core.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.js"></script>

<%--<script src="/resources/js/jquery.js"></script>--%>

</body>
</html>
