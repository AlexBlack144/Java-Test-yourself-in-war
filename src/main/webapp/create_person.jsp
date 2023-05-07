<%@ page import="MySQL.Persons" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Person</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="cap.jsp"/>
<br>
<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
            <div class="bd-example">
                <h3>Оставить заявку</h3>
                <form method="post">

                    <input hidden value="${person.idpersons}" name="id"/><br><br>

                    <label>Имя</label><br>
                    <input value="${person.first_name}" name="first_name"/><br><br>

                    <label>Фамилия</label><br>
                    <input value="${person.last_name}" name="last_name"/><br><br>

                    <label>Возрост</label><br>
                    <input value="${person.age}" name="age" type="number" /><br><br>

                    <label>Адрес</label><br>
                    <input value="${person.address}" name="address"/><br><br>

                    <label>Тел.</label><br>
                    <input value="${person.phone}" name="phone"/><br><br>

                    <label>Email</label><br>
                    <input value="${person.email}" name="email"/><br><br>

                    <label>Професия</label><br>
                    <select>
                        <option value="${person.profession}" name="Парамедик">Парамедик</option>
                        <option value="${person.profession}" name="Гранатометчик">Гранатометчик</option>
                        <option value="${person.profession}" name="Валантёр">Валантёр</option>
                    </select>
                    <br><br>
                    <input type="submit" class="btn btn-sm btn-outline-secondary" value="Сохранить"/>

                </form>
            </div>
    </div>
</div>
</body>
</html>
