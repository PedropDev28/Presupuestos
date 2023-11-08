/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package es.albarregas.controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

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
@WebServlet(name = "PaisesController", urlPatterns = { "/PaisesController" })
public class PaisesController extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                        HttpSession session = request.getSession();

        if (session.getAttribute("paises") == null) {
            Locale locales[] = SimpleDateFormat.getAvailableLocales();
            TreeMap<String, String> map = new TreeMap();
            TreeMap<String, String> mapa = new TreeMap();
            for (Locale local : locales) {
                map.put(local.toString(), local.getDisplayName());
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String pais = entry.getValue();
                int inicio = pais.indexOf("(");
                int fin = pais.indexOf(")");
                if (inicio != -1 && fin != -1) {
                    if (!pais.contains(",") && !pais.contains(" y ") && !entry.getKey().contains("#")) {
                        if (!mapa.containsValue(pais.substring(inicio + 1, fin))) {
                            mapa.put(pais.substring(inicio + 1, fin), entry.getKey());
                            
                        }
                    }
                }
            }
            session.setAttribute("paises", mapa);
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
