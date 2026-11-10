/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.Date;
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
public class SendMessageServlet extends HttpServlet {
    
    @EJB
    private MessageFacadeLocal mfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String name = (String)session.getAttribute("name");
        String text = request.getParameter("msg");
        Long messageId = Long.parseLong(request.getParameter("msg_id"));
        String priority = request.getParameter("priority");
        
        Message message = updateMessage(name, text, messageId, priority);
        mfl.create(message);
        
        RequestDispatcher disp = request.getRequestDispatcher("send_outcome.jsp");
        disp.forward(request, response);
    }
    
    private Message updateMessage(String name, String text, Long messageId, String priority){
        Message m = new Message();
        m.setName(name);
        m.setMessageId(messageId);
        m.setText(text);
        m.setPriority(priority);
        m.setCreationDate(new Date());
        return m;
    }
}
