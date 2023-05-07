package com.example.jsp;

import MySQL.Persons;
import MySQL.Person_DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "personServlet", value = "/create_person")
public class CreatPersonServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");


        getServletContext().getRequestDispatcher("/create_person.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            int age = Integer.parseInt(request.getParameter("age"));
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String profession = request.getParameter("profession");
            Persons person = new Persons(first_name, last_name, age, address, phone, email, profession);
            Person_DB.insert(person);

            response.sendRedirect(request.getContextPath()+"/db_persons");
        }
        catch(Exception ex) {

            getServletContext().getRequestDispatcher("/create_person.jsp").forward(request, response);
        }
    }
}
