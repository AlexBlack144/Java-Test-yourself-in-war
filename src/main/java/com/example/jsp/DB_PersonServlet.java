package com.example.jsp;

import MySQL.Persons;
import MySQL.Person_DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/db_persons")
public class DB_PersonServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Persons> persons = Person_DB.select();
        request.setAttribute("persons", persons);

        getServletContext().getRequestDispatcher("/db_persons.jsp").forward(request, response);
    }
}
