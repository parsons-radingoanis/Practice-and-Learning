/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
public class StartSession extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        initializeSession(session);
        
        RequestDispatcher disp = request.getRequestDispatcher("menu.jsp");
        disp.forward(request, response);
    }
    
    private void initializeSession(HttpSession session){
        String message = "";
        List<String> unique = new ArrayList<>();
        List<String> nonUnique = new ArrayList<>();
        
        session.setAttribute("message", message);
        session.setAttribute("unique", unique);
        session.setAttribute("nonUnique", nonUnique);
    }
}
