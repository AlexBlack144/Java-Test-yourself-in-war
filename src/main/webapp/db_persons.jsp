<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DB_Persons</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="cap.jsp"/>
<br>
<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div class="bd-example">
            <h1>Ваша заявка принята!</h1>
        </div>
    </div>
</div>
<br>
<div class="container">
        <div class="bd-example">
            <h2>Остальные заявки:</h2>
            <table>
                <tr><th>Имя </th><th>Фамилия </th><th>Возрост </th><th>Адрес </th><th>Тел. </th><th>Email </th><th>Професия </th></tr>
                <c:forEach var="person" items="${persons}">
                    <tr><td>${person.first_name}</td>
                        <td>${person.last_name}</td>
                        <td>${person.age}</td>
                        <td>${person.address}</td>
                        <td>${person.phone}</td>
                        <td>${person.email}</td>
                        <td>${person.profession}</td>
                        </c:forEach>
            </table>
        </div>
</div>
</body>
</html>
