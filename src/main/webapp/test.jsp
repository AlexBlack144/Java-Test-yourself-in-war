<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 23.04.2022
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Paramedic_Test</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="cap.jsp"/>
<br>
<div class="container">
    <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
            <p class="display-4 fst-italic">Вопросы:</p>
            <form>
                <fieldset name = "extra">
        <legend>1.${questions1.question}</legend>
        <div>
            <input type="radio" id="answer0" name="answer" value="Нет">
            <label for="answer0">Нет</label>
            <input type="radio" id = "answer1" name="answer" value="Почти на все" >
            <label for="answer1">Почти на все</label>
            <input type="radio" id = "answer2" name="answer" value="${questions1.answer}">
            <label for="answer2">${questions1.answer}</label>
        </div>
        <br>
        <div>
            <input class="btn btn-sm btn-outline-secondary" type="button" id="but1" value="check" onclick="check()"/>
        </div>
        <pre id="log1"></pre>
    </fieldset>
                <br><br>
                <fieldset name = "extra2">
        <legend>2.${questions2.question}</legend>
        <div>
            <input type="radio" id = "answer3" name="2answer" value="Возможно">
            <label for="answer3">Возможно </label>
            <input type="radio" id = "answer4" name="2answer" value="Наверное">
            <label for="answer4">Наверное </label>
            <input type="radio" id = "answer5" name="2answer" value="${questions2.answer}">
            <label for="answer5">${questions2.answer}</label>
        </div>
        <br>
        <div>
            <input class="btn btn-sm btn-outline-secondary" type="button" id="but2" value="check" onclick="check2()"/>
        </div>
        <pre id="log2"></pre>
    </fieldset>
                <br><br>
                <fieldset name = "extra3">
        <legend>3.${questions3.question}</legend>
        <div>
            <input type="radio" id = "answer7" name="3answer" value="Не особо">
            <label for="answer7">Не особо </label>
            <input type="radio" id = "answer8" name="3answer" value="Разве?">
            <label for="answer8">Разве? </label>
            <input type="radio" id = "answer9" name="3answer" value="${questions3.answer}">
            <label for="answer9">${questions3.answer}</label>
        </div>
        <br>
        <div>
            <input class="btn btn-sm btn-outline-secondary" type="button" id="but3" value="check" onclick="check3()"/>
        </div>
        <pre id="log3"></pre>
    </fieldset>
                <br><br>
                <fieldset name = "extra4">
                    <legend>4.${questions4.question}</legend>
                    <div>
                        Ответ: <input type="text" id="text" name="4answer" value="">
                    </div>
                    <br>
                    <div>
                        <input class="btn btn-sm btn-outline-secondary" type="button" id="but4" value="check" onclick="check4()"/>
                    </div>
                    <pre id="log5"></pre>
                </fieldset>
            </form>
            <div>
                <input class="btn btn-sm btn-outline-secondary" style="height:50px;width:200px" type="button" value="Подсчёт ответов" onclick="countRight()"/>
            </div>
            <br>
            <form method="get" action="${pageContext.request.contextPath}/create_person">
                <button id="but5" type="submit" class="btn btn-sm btn-outline-secondary" disabled>Оставить заявку</button>
            </form>
            <pre id="log4" ></pre>
            <script>
                var form = document.querySelector("form");
                var log1 = document.querySelector("#log1");
                var log2 = document.querySelector("#log2");
                var log3 = document.querySelector("#log3");
                var log4 = document.querySelector("#log4");
                var log5 = document.querySelector("#log5");
                const  but1 = document.querySelector('#but1')
                const  but2 = document.querySelector('#but2')
                const  but3 = document.querySelector('#but3')
                const  but4 = document.querySelector('#but4')
                const  but5 = document.querySelector('#but5')
                var count = 0;

                function check() {
        var inp = document.getElementsByName('answer');
        var output = "";
        for (var i = 0; i < inp.length; i++) {
            if ( inp[2].checked) {
                output = "правильно " + "\r";
                count++
            }
            else {
                output ="error"
            }
        };
        but1.disabled = true;
        log1.innerText = output;
        if(count>=3){count=count-2;}else if(count<=0){count=0}
    }
                function check2() {
        var inp = document.getElementsByName('2answer');
        var output = "";

        for (var i = 0; i < inp.length; i++) {
            if ( inp[2].checked) {
                output = "правильно " + "\r";
                count++;
            }
            else {
                output ="error"

            }
        };
        but2.disabled = true;
        log2.innerText = output;
        if(count>=3){count=count-2;}else if(count<=0){count=0}
    }
                function check3() {
        var inp = document.getElementsByName('3answer');
        var output = "";
        for (var i = 0; i < inp.length; i++) {
            if ( inp[2].checked) {
                output = "правильно " + "\r";
                count++;
            }
            else {
                output ="error"

            }
        };
        but3.disabled = true;
        log3.innerText = output;
        if(count>=3){count=count-2;}else if(count<=0){count=0}
    }
                function check4() {
        var inp = document.getElementById("text");
        var output = "";
        if ( inp.value=="${questions4.answer}") {
            output = "правильно " + "\r";
            count++;
        }
        else {
            output ="error"
        }
        but4.disabled = true;
        log5.innerText = output;
    }
                function countRight(){

        var output ="Правильных ответов из 4 : " + count;
        log4.innerText = output;
        if(count==4)
        {
            but5.disabled = false;
        }
    }
            </script>
        </div>
    </div>
</div>
</body>
</html>
