<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 17.04.2022
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top"
                         width="100%" height="2"
                         xmlns="http://www.w3.org/2000/svg"
                         role="img" aria-label="Placeholder: Thumbnail"
                         preserveAspectRatio="xMidYMid slice"
                         focusable="false">
                        <title>Placeholder</title>
                        <img src="${pageContext.request.contextPath}/pic/paramedic_pic.jpg" alt="paramedic_pic">
                    </svg>
                    <div class="card-body">
                        <p class="card-text">Быть Парамедиком</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <form method="get" action="${pageContext.request.contextPath}/paramedic_info.jsp">
                                    <button  type="submit" class="btn btn-sm btn-outline-secondary">Выбрать</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top"
                         width="100%" height="2"
                         xmlns="http://www.w3.org/2000/svg"
                         role="img" aria-label="Placeholder: Thumbnail"
                         preserveAspectRatio="xMidYMid slice"
                         focusable="false">
                        <title>Placeholder</title>
                        <img src="${pageContext.request.contextPath}/pic/grenade_launcher_pic.jpg" alt="grenade_launcher_pic">
                    </svg>
                    <div class="card-body">
                        <p class="card-text">Быть Гранатометчиком </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <form method="get" action="${pageContext.request.contextPath}/grenade_launcher_info.jsp">
                                    <button  type="submit" class="btn btn-sm btn-outline-secondary">Выбрать</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="col">
                <div class="card shadow-sm">
                    <svg class="bd-placeholder-img card-img-top"
                         width="100%" height="2"
                         xmlns="http://www.w3.org/2000/svg"
                         role="img" aria-label="Placeholder: Thumbnail"
                         preserveAspectRatio="xMidYMid slice"
                         focusable="false">
                        <title>Placeholder</title>
                        <img src="${pageContext.request.contextPath}/pic/volunteer_pic.jpg" alt="volunteer_pic">
                    </svg>
                    <div class="card-body">
                        <p class="card-text">Быть Валантёром</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <form method="get" action="${pageContext.request.contextPath}/volunteer_info.jsp">
                                    <button  type="submit" class="btn btn-sm btn-outline-secondary">Выбрать</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</body>
</html>
