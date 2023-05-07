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
    <title>Paramedic_Info</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="cap.jsp"/>
<br>

<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
            <img src="${pageContext.request.contextPath}/pic/paramedic_pic2.jpeg" alt="paramedic_pic2">
            <h1 class="display-4 fst-italic">Парамедик</h1>
            <p class="lead my-3">Специалист с медицинским образованием, работающий в службе скорой медицинской помощи, аварийно-спасательных и военных подразделениях и обладающий навыками оказания экстренной медицинской помощи на догоспитальном этапе.</p>
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
        <a href="https://ru.wikipedia.org/wiki/Парамедик">Wikipedia.org</a>
        <br>
        <a href="https://paramedic.ua">Paramedic.ua</a>
        <br>
        <a href="https://www.sop.com.ua/article/ru/265-qqq-17-m1-03-01-2017-instruktsiya-po-okazaniyu-pervoy-dovrachebnoy-pomoshchi-postradavshim">
            Оказание первой доврачебной помощи пострадавшим
        </a>
        <br>
        <a href="https://everyday.in.ua/okazanie-pervoj-medicinskoj-pomoshhi-v/">Окозание первой помощи в условиях боевых действий</a>
        <br>
        <a href="https://doc.ua/news/articles/oshibki-pri-okazanii-pervoj-pomoshi-ili-kak-ne-nado-spasat-lyudej">Ошибки при оказании первой помощи</a>
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
