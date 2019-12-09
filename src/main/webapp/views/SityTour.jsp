<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html0"; charset="utf-8">
    <title>Каталог новобудов міста</title>

    <script src="/resources/js/jquery-1.4.2.min.js"></script>
    <script src="/resources/js/jquery.cookie.js"></script>

    <script src="/resources/js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="/resources/css/sweet-alert.css">

    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/resources/css/grid.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/rd-mailform.css">
    <link rel="stylesheet" href="/resources/css/nav.css">
</head>
<body>

<style>

    .boxbasket{
        border: 1px solid black;
        background-color: beige;
    }

</style>




<div class="page">
    <!--==============================HEADER==============================-->
    <header>
        <section class="parallax parallax01">
            <div class="top-panel">
                <div class="container">
                    <div class="brand">
                        <h1 class="brand_name" id="top0"><a href="/static">Каталог новобудов міста </a></h1>

                        <nav>
                            <ul>
                                <li><a href="#top0">Lorem ipsum</a></li>
                                <li><a href="#top1">Lorem ipsum</a></li>
                                <li><a href="#top2">Lorem ipsum</a></li>
                                <li><a href="#top3">Lorem ipsum</a></li>
                                <li><a href="/Sign-Up-Log-In">Вхід/Реєстрація</a></li>
                            </ul>
                        </nav>

                    </div>
                </div>
            </div>



            <div class="container">
                <div class="row">
                    <div class="preffix_4 grid_4">
                        </br>
                        </br>
                        </br>
                        </br>


                        <sec:authorize access="isAuthenticated()">
                            <span class="centergood">Welcome  <sec:authentication property="name"/> </span></br>
                            </br>
                            <span class="centergood"><a href="/logout">Exit</a></span>
                        </sec:authorize>

                        </br>
                        </br>
                        </br>
                        </br>


                    </div>
                </div>
            </div>
        </section>
    </header>

    <!--==============================CONTENT==============================-->
    <main>

        <section>
            <div class="soc-fixed">

                <a href="https://youtube.com" target="_blank" >
                    <img src="/resources/images/youtube.png">
                </a>

                <a href="https://vk.com" target="_blank">
                    <img src="/resources/images/vkontakte.png">
                </a>

                <a href="https://twitter.com" target="_blank">
                    <img src="/resources/images/twitter.png">
                </a>

                <a href="https://instagram.com" target="_blank">
                    <img src="/resources/images/instagram.png">
                </a>

                <a href="https://google.com" target="_blank">
                    <img src="/resources/images/google.png">
                </a>

            </div>
            <section>

                <section class="well center">
                    <div class="container">
                        <h3 id="top1">Lorem ipsum</h3>
                        <div class="row iconed-list">
                            <div class="grid_4">
                                <div class="icon  , blockqwerty"></div>
                                <h3>Lorem ipsumа</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </div>

                            <div class="grid_4">
                                <div class="icon  icon__bg-2 , blockqwerty"></div>
                                <h3>Lorem ipsum</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </div>

                            <div class="grid_4">
                                <div class="icon  icon__bg-3 , blockqwerty"></div>
                                <h3>Lorem ipsum</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </div>

                        </div>
                    </div>

                </section>
                <section class="well well__02 bg-2 shadow">
                    <div class="container">
                        <div class="row">
                            <div class="grid_5">
                                <div class="img"><img src="/resources/images/img01.jpg" alt=""></div>
                            </div>
                            <div class="grid_7 offset01">
                                <h2>Lorem ipsum</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum..</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="well well__03">
                    <div class="container">

                        <div class="accordion">
                            <ul>
                                <li>
                                    <h3 id="top2">Переглянути новобудови міста &nbsp; &nbsp;


<sec:authorize access="isAuthenticated()">
                                        <a href="/tour/add"><span class="adminmenured">Додати новобудову</span></a> &nbsp; &nbsp;
                                        <a href="/user/list"><span class="adminmenured">UserList</span></a>

</sec:authorize>


                                    </h3>
                                    <sec:authorize access="isAnonymous()">
                                        </br>
                                        <h4>Для перегляду новобудов потрібно &nbsp; <a href="/Sign-Up-Log-In"><span class="adminmenured">Увійти &nbsp;</span></a> або &nbsp; <a href="/Sign-Up-Log-In"><span class="adminmenured">Зареєструватися</span></a></h4>
                                        </br>
                                    </sec:authorize>




<%--                                        </br>--%>
<%--                                        <div id="basket" class="paypallbutoon , boxbasket ">--%>
<%--                                            <table class="paypallbutoon ,">--%>
<%--                                                <tbody>--%>
<%--                                                <tr class="hPb">--%>
<%--                                                    <td>Вибрано:</td>--%>
<%--                                                    <td><span id="totalGoods">0</span> екскурсії(й)</td>--%>
<%--                                                </tr>--%>
<%--                                                <tr class="hPb">--%>
<%--                                                    <td>Сумма:</td>--%>
<%--                                                    <td><span id="totalPrice">0</span> грн.</td>--%>
<%--                                                </tr>--%>
<%--                                                <tr class="hPe">--%>
<%--                                                    <td colspan="2">Корзина пуста</td>--%>
<%--                                                </tr>--%>

<%--                                                <tr>--%>

<%--                                                    <td><a id="clearBasket" href="#"><span class="adminmenured">Очистити&nbsp;&nbsp; &nbsp;&nbsp;</span></a></td>--%>
<%--                                                    <td><a id="checkOut" href="#"><span class="adminmenured">Замовити</span></a></td>--%>

<%--                                                </tr>--%>
<%--                                                </tbody>--%>
<%--                                            </table>--%>
<%--                                        </div>--%>

                                    </br>

                                    <t:forEach items="${tourss}" var="qwe">

                                    <div class='cbm_wrap , item_box' >
                                        <span class='horiz-flag noise ' > <h1 >${qwe.tourTitle}</h1>  </span>

                                        <img src='http://www.wpthemegenerator.com/wp-content/uploads/2012/06/Image.jpg'>
                                        <p class="paypallbutoon"> <a href="/deleteTour/${qwe.idTour}"><span class="adminmenured">Delete</span></a>&nbsp; &nbsp;
                                            <a href="/TourEdit/${qwe.idTour}"><span class="adminmenured">Edit</span></a></p>
                                        <h1>Район:</h1>
                                        <p class="paypallbutoon">${qwe.startTour}</p>

                                        <h1>Опис:</h1>
                                        <p class="paypallbutoon">${qwe.duration}</p>

                                        <h1>від тис грн:</h1>
                                        <p   class="paypallbutoon">${qwe.price}</p>


                                    </div>


                                    </t:forEach>


                                </li>
                        </div>
                </section>





                <section class="well well__04 bg-3">
                    <div class="container">
                        <h2 id="top3">Lorem ipsum</h2>
                        </hr>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>


<center>
                        <div style="width: 700px;position: relative;"><iframe width="700" height="440" src="https://maps.google.com/maps?width=700&amp;height=440&amp;hl=en&amp;q=nu%20lp%20%201+(%D0%9D%D0%B0%D0%B7%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5)&amp;ie=UTF8&amp;t=&amp;z=10&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><div style="position: absolute;width: 80%;bottom: 10px;left: 0;right: 0;margin-left: auto;margin-right: auto;color: #000;text-align: center;"><small style="line-height: 1.8;font-size: 2px;background: #fff;">Powered by <a href="http://www.googlemapsgenerator.com/ru/">Googlemapsgenerator.com/ru/</a> & <a href="http://eurodisneyaanbiedingen.nl/">eurodisneyaanbiedingen (nl)</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><br />
</center>

                </section>
    </main>

    <!--==============================FOOTER==============================-->
    <footer>
        <div id="scrollup"><img alt="Вверх" src="/resources/images/up.png"></div>
        <div class="container">
            <div class="footer-brand">
                <p class="footer-brand_slogan">Каталог новобудов міста</p>
            </div>
            <p class="copyright">
                © <span id="copyright-year"></span>. Всі права захищені
            </p>
        </div>
    </footer>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        msg = new Array();
        var basket = '';
        var totalprice = 0;
        var totalCountGoods = 0;
        if (!$.cookie("basket")) {$.cookie("basket", '', {path: "/"});}
        basket = decodeURI($.cookie("basket"));
        basketArray = basket.split(",");// Находим все товары
        for(var i=0; i<basketArray.length-1;i++) {
            goodsId = basketArray[i].split(":"); // Находим id товара, цену и количество
            totalCountGoods+=parseInt(goodsId[1]);
            totalprice+=parseInt(goodsId[1])*parseInt(goodsId[2]);
        }
        if (totalprice > 0) {
            $('#clearBasket').show();
            $('#checkOut').show();
            $('.hPb').show();
            $('.hPe').hide();
        }
        if (!totalprice) {totalprice = 0;}
        $('#totalPrice').text(totalprice);
        $('#totalGoods').text(totalCountGoods);
    });



    $('a.addCart').click(function() {
        data = $(this).attr('id').split('-');
        addCart(data[1], data[2], 1);
        return false;
    });



    function addCart(p1, p2, p3){
        if (!p3 || p3==0) {p3=1;}
        msg.id = p1; 		  // АйДи
        msg.price = parseInt(p2); // Цена
        msg.count = parseInt(p3); // Количество
        var check = false;
        var cnt = false;
        var totalCountGoods = 0;
        var totalprice = 0;
        var goodsId = 0;
        var basket = '';
        $('#clearBasket').show();
        $('#checkOut').show();
        $('.hPb').show();
        $('.hPe').hide();
        basket = decodeURI($.cookie("basket"));
        if (basket=='null') {basket = '';}
        basketArray = basket.split(",");
        for(var i=0; i<basketArray.length-1;i++) {
            goodsId = basketArray[i].split(":");
            if(goodsId[0]==msg.id)	// ищем, не покупали ли мы этот товар ранее
            {
                check = true;
                cnt   = goodsId[1];
                break;
            }
        }
        if(!check) {
            basket+= msg.id + ':' + msg.count + ':' + msg.price + ',';
        } else {
           swal("Вже є в корзині!");
        }
        if(!check) {
            console.log("Добавлено!");
            basketArray = basket.split(",");// Находим все товары
            for(var i=0; i<basketArray.length-1;i++) {
                goodsId = basketArray[i].split(":"); // Находим id товара, цену и количество
                totalCountGoods+=parseInt(goodsId[1]);
                totalprice+=parseInt(goodsId[1])*parseInt(goodsId[2]);
            }
            $('#totalGoods').text(totalCountGoods);
            $('#totalPrice').text(totalprice);
            $.cookie("totalPrice", totalprice, {path: "/"});
            $.cookie("basket", basket, {path: "/"});
        }
    }



    $('#clearBasket').click(function() {
        $.cookie("totalPrice", '', {path: "/"});
        $.cookie("basket", '', {path: "/"});
        $('#totalPrice').text('0');
        $('#totalGoods').text('0');
        $('.hPb').hide();
        $('.hPe').show();
        $(this).hide();
        $('#checkOut').hide();
        $.jGrowl("Корзина очищена!");
        return false;
    });


    document.getElementById('checkOut').onclick = function(){

        swal({
            title: "Дякуємо!",
            text: "На Ваш email відправлено інструкцію з подальшими діями.",
            imageUrl: '/resources/images/thumbs-up.jpg'
        });
    };






</script>
<script src="/resources/js/script.js"></script>

</body>
</html>
