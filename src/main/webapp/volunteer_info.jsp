<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 22.04.2022
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Volunteer_Info</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="cap.jsp"/>
<br>
<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
            <img src="${pageContext.request.contextPath}/pic/volunteer_pic2.jpeg" alt="paramedic_pic2">
            <h1 class="display-4 fst-italic">Волонтер</h1>
            <p class="lead my-3">Деятельность, совершаемая добровольно на благо общества или отдельных социальных групп, без расчета на вознаграждение. Таким образом, волонтерами становятся не из финансовых побуждений, а ради помощи другим и приобретения бесценного жизненного опыта.</p>
        </div>
    </div>
</div>

<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div>
            <div class="bd-example">
                <p class="h3">Здесь не будет особой информации, тебе нужно иметь только желание и готовность помочь!</p>
            <br>
                <form method="get" action="${pageContext.request.contextPath}/test">
                    <button  type="submit" class="btn btn-sm btn-outline-secondary">Проверить свои знания</button>
                </form>
        </div>
    </div>
</div>
</body>
</html>
