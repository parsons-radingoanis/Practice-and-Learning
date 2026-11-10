/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.MessageFacadeLocal;
import za.ac.tut.entities.Message;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
public class NameServlet extends HttpServlet {

      
    @EJB
    private MessageFacadeLocal mfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String userName = request.getParameter("name");
        
        updateSession(session, userName);
        
        session.setAttribute("userName", userName);
        
        RequestDispatcher disp = request.getRequestDispatcher("menu.jsp");
        disp.forward(request, response);
    }
    
    private void updateSession(HttpSession session, String userName){
        String name = userName;        
        session.setAttribute("name", name);
    }
}
