<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 22.04.2022
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grenade_Launcher_Info</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="cap.jsp"/>
<br>
<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
            <img src="${pageContext.request.contextPath}/pic/grenade_launcher_pic2.png" alt="grenade_launcher_pic2">
            <h1 class="display-4 fst-italic">Гранатометчик</h1>
            <p class="lead my-3">
                Боец, вооруженный ручными гранатами. Ведет огонь из гранатомета и выполняет все действия, связанные с применением его в бою.
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div>
            <div class="bd-example">
                <p class="h3">Здесь не будет много информации, я оставлю только ссылки на различные сайты где вы можете всё узнать и выучить</p>
            </div>
            <br>
            <div class="bd-example">
                <a href="https://ru.wikipedia.org/wiki/Список_гранатомётов">Список гранатомётов</a>
                <br>
                <a href="https://uk.wikipedia.org/wiki/РПГ-7">РПГ-7</a>
                <br>
                <a href="https://mil.in.ua/uk/articles/hloptsi-z-lisu-rozpovily-insturktsiyu-z-granatometa-carl-gustaf/">
                    Инструкцию из гранатомета “Carl Gustaf”
                </a>
                <br>
                <a href="https://defence-ua.com/weapon_and_tech/jak_striljati_z_granatometa_at4_intruktsija_vid_bijtsja_zsu_video-6393.html">
                    Как стрелять из гранатомета AT4 интрукция от бойца ВСУ</a>
                <br>
                <a href="https://battlefield.fandom.com/ru/wiki/Гранатомётчик">Battlefield</a>
            </div>
            <br>
            <form method="get" action="${pageContext.request.contextPath}/test">
                <button  type="submit" class="btn btn-sm btn-outline-secondary">Проверить свои знания</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
