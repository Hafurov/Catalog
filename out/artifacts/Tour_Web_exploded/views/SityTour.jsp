<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Yura
  Date: 02.03.2017
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html0"; charset="utf-8">
    <title>CityTour</title>

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
                        <h1 class="brand_name" id="top0"><a href="/">city tour</a></h1>

                        <nav>
                            <ul>
                                <li><a href="#top0">Головна</a></li>
                                <li><a href="#top1">Найпопулярніші екскурсії</a></li>
                                <li><a href="#top2">Переглянути екскурсії</a></li>
                                <li><a href="#top3">Про нас</a></li>
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
                        <h3 id="top1">Найпопулярніші екскурсії</h3>
                        <div class="row iconed-list">
                            <div class="grid_4">
                                <div class="icon  , blockqwerty"></div>
                                <h3>Підземелля Львова</h3>
                                <p>Тематична екскурсія підземним Львовом, тривалістю 2-2,5 години.
                                    Підземне місто манить до себе… Які таємниці воно від нас приховує?</p>
                            </div>

                            <div class="grid_4">
                                <div class="icon  icon__bg-2 , blockqwerty"></div>
                                <h3>Австрійський Львів</h3>
                                <p>Екскурсія об’єктами австрійської спадщини міста Львова, тривалістю 2,5 години.
                                    Австрійський період в історії Львова тривав майже 150 років. За цей час було
                                    кардинально змінено архітектурне обличчя нашого міста.
                                    І зміни ці вийшли на краще.</p>
                            </div>

                            <div class="grid_4">
                                <div class="icon  icon__bg-3 , blockqwerty"></div>
                                <h3>Кримінальний Львів</h3>
                                <p>Пішохідна екскурсія центром міста тривалістю 2 години. Запрошуємо на
                                    екскурсію кримінальною спадщиною Львова.
                                    Кожне місто має дві сторони: світлу і темну. Наше місто Львів
                                    не є винятком з цього правила.</p>
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
                                <h2>Екскурсії по Львову</h2>
                                <p>Кожне місто наділене своєю історією та індивідуальністю. Львів – старовинне місто, місто
                                    – історія, місто – музей, місто, що ніби ховає в кожному закутку якусь таємницю.Львів неповторний в будь-яку пору року.
                                    Взимку чи влітку, восени чи весною навіть найвибагливіший гість міста, зможе знайти для себе свій закуток, де відчує
                                    неповторну атмосферу цього старенького та доброго Львова.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="well well__03">
                    <div class="container">

                        <div class="accordion">
                            <ul>
                                <li>
                                    <h3 id="top2">Переглянути екскурсії &nbsp; &nbsp;

                                        <sec:authorize access="isAuthenticated()">

                                        <a href="/tour/add"><span class="adminmenured">AddTour</span></a> &nbsp; &nbsp;
                                        <a href="/user/list"><span class="adminmenured">UserList/BanList</span></a>

                                        </sec:authorize>


                                    </h3>
                                    <sec:authorize access="isAnonymous()">
                                        </br>
                                        <h4>Для перегляду потрібно &nbsp; <a href="/Sign-Up-Log-In"><span class="adminmenured">Увійти &nbsp;</span></a> або &nbsp; <a href="/Sign-Up-Log-In"><span class="adminmenured">Зареєструватися</span></a></h4>
                                        </br>
                                    </sec:authorize>



                                    <sec:authorize access="isAuthenticated()">
                                        </br>
                                        <div id="basket" class="paypallbutoon , boxbasket ">
                                            <table class="paypallbutoon ,">
                                                <tbody>
                                                <tr class="hPb">
                                                    <td>Вибрано:</td>
                                                    <td><span id="totalGoods">0</span> екскурсії(й)</td>
                                                </tr>
                                                <tr class="hPb">
                                                    <td>Сумма:</td>
                                                    <td><span id="totalPrice">0</span> грн.</td>
                                                </tr>
                                                <tr class="hPe">
                                                    <td colspan="2">Корзина пуста</td>
                                                </tr>

                                                <tr>

                                                    <td><a id="clearBasket" href="#"><span class="adminmenured">Очистити&nbsp;&nbsp; &nbsp;&nbsp;</span></a></td>
                                                    <td><a id="checkOut" href="#"><span class="adminmenured">Замовити</span></a></td>

                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </br>

                                    <t:forEach items="${tourss}" var="qwe">

                                    <div class='cbm_wrap , item_box' >
                                        <span class='horiz-flag noise ' > <h1 >${qwe.tourTitle}</h1>  </span>

                                        <img src='http://www.wpthemegenerator.com/wp-content/uploads/2012/06/Image.jpg'>
                                        <p class="paypallbutoon"> <a href="/deleteTour/${qwe.idTour}"><span class="adminmenured">Delete</span></a>&nbsp; &nbsp;
                                            <a href="/TourEdit/${qwe.idTour}"><span class="adminmenured">Edit</span></a></p>
                                        <h1>Дата екскурсії:</h1>
                                        <p class="paypallbutoon">${qwe.startTour}</p>

                                        <h1>Тривалість:</h1>
                                        <p class="paypallbutoon">${qwe.duration}</p>

                                        <h1>Ціна(грн):</h1>
                                        <p   class="paypallbutoon">${qwe.price}</p>

                                        <span class="paypallbutoon">
                                                <%--<button >В кошик</button>--%>
                                            <button><a id="good-${qwe.price}-${qwe.price}" href="#" class="addCart">В корзину</a></button><br>
                                        </span>
                                    </div>


                                    </t:forEach>
                                    </sec:authorize>

                                </li>
                        </div>
                </section>

                <section class="parallax parallax02 shadow">
                    <div class="container">
                        <div class="row">
                            <div class="preffix_1 grid_10">
                                <blockquote>
                                    <q>Подорож робить хорошу людину кращою, а погану людину гіршою.</q>
                                    <div class="img img__circle"><img src="/resources/images/img02.jpg" alt=""></div>

                                    <h4>Олег Кулик</h4><h4> Головний екскурсовод</h4>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </section>



                <section class="well well__04 bg-3">
                    <div class="container">
                        <h2 id="top3">Про нас </h2>
                        </hr>
                        <p>
                            Дякуємо, що завітали на наш ресурс :)
                            Сподіваємося, що його матеріали стали для Вас корисними та цікавими.
                            Зі всіма запитаннями, пропозиціями чи зауваженнями можете звертатися в наш офіс, за адресою вулиця Івана Франка, 61
                            або за телефонами : </br>
                            +38(093) 306 - 97 - 97 </br>
                            +38(095) 306 - 97 - 97  </br>
                            +38(098) 306 - 97 - 97</br>
                            чи писати на e-mail gafurov.lviv@gmail.com
                        </p>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2573
              .602488872014!2d24.03101831541337!3d49.83113597939472!2m3!1f0!2f0!3f0!3
                m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473add67a0879827%3A0xa20606379b7c5fe
                  0!2z0LLRg9C70LjRhtGPINCG0LLQsNC90LAg0KTRgNCw0L3QutCwLCA2MSwg0JvRjNCy0Zb
                    Qsiwg0JvRjNCy0ZbQstGB0YzQutCwINC-0LHQu9Cw0YHRgtGMLCDQo9C60YDQsNC40L3QsA
                      !5e0!3m2!1sru!2sru!4v1485557155189"
                                width="100%" height="600" frameborder="0" style="border:0" allowfullscreen>
                        </iframe>
                </section>
    </main>

    <!--==============================FOOTER==============================-->
    <footer>
        <div id="scrollup"><img alt="Вверх" src="/resources/images/up.png"></div>
        <div class="container">
            <div class="footer-brand">
                <p class="footer-brand_slogan">sity tour</p>
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
