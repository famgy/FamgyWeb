package com.famgy.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class FirstServlet extends HttpServlet {

    private String message;

    @Override
    public void init() throws ServletException {
        message = "Hello world, this message is from first servlet!";
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<h3>" + message + "</h3");

        //request.getRequestDispatcher("/SecondServlet").forward(request, response);
        request.getRequestDispatcher("/SecondServlet").include(request, response);
    }
}
