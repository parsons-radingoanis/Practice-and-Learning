/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.MessageFacadeLocal;
import za.ac.tut.entities.Message;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
public class ViewPerCategoryServlet extends HttpServlet {
   
    @EJB
    private MessageFacadeLocal mfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Message> messages = mfl.findAll();
        List<String> lowPriority = mfl.getMessagesPerPriority(messages, "Low");
        List<String> highPriority = mfl.getMessagesPerPriority(messages, "High");
        List<String> criticalPriority = mfl.getMessagesPerPriority(messages, "Critical");
        
        request.setAttribute("lowPriority", lowPriority);
        request.setAttribute("highPriority", highPriority);
        request.setAttribute("criticalPriority", criticalPriority);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_all_messages_per_category_outcome.jsp");
        disp.forward(request, response);
    }
}
