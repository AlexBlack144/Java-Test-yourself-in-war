package com.example.jsp;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "testServlet", value = "/test")
public class testServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        response.setContentType("text/html");

        Questions questions1 = new Questions("Ты на все ссылки нажал?","Да");
        Questions questions2 = new Questions("Точно всё прочитал? Мы же проверим!","Точно");
        Questions questions3 = new Questions("Ты же понимаешь, что это всё серьёзно?","Понимаю");
        Questions questions4 = new Questions("Если придётся убить москаля, ты это сделаешь?(Да/Нет)","Да");

        request.setAttribute("questions1", questions1);
        request.setAttribute("questions2", questions2);
        request.setAttribute("questions3", questions3);
        request.setAttribute("questions4", questions4);

        getServletContext().getRequestDispatcher("/test.jsp").forward(request, response);
    }
    public void destroy() {
    }
}
