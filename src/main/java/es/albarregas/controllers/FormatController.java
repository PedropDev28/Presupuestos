/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pedro Lazaro
 */
@WebServlet(name = "FormatController", urlPatterns = { "/FormatController" })
public class FormatController extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Locale idioma = null;
        String codigo = null;
        HttpSession session = request.getSession();

        String opcion = request.getParameter("pais");
        if (!opcion.substring(opcion.indexOf("-") + 1).equals("no")) {
            codigo = opcion.substring(0, opcion.indexOf("-"));
            String nombre = opcion.substring(opcion.indexOf("-") + 1);
            String parte1 = codigo.substring(0, codigo.indexOf("_"));
            String parte2 = codigo.substring(codigo.indexOf("_") + 1);
            if (nombre.contains("ñ")) {
                idioma = request.getLocale();
            } else {
                idioma = new Locale(parte1, parte2);
            }

            session.setAttribute("pais", nombre);
            session.setAttribute("parte1", parte1);
            session.setAttribute("codigo", codigo);
            session.setAttribute("idioma", idioma);
            request.getRequestDispatcher("JSP/inicio.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }

    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
