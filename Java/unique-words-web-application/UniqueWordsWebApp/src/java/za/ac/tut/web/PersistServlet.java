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
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.MessageFacadeLocal;
import za.ac.tut.entities.Message;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
public class PersistServlet extends HttpServlet {

    @EJB
    private MessageFacadeLocal mfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String message = (String)session.getAttribute("message");
        List<String> unique = (List<String>)session.getAttribute("unique");
        String uniqueWords = String.join(", ", unique);
        
        List<String> nonUnique = (List<String>)session.getAttribute("nonUnique");
        String nonUniqueWords = String.join(", ", nonUnique);
        
        Message msg = updateMessage(message, uniqueWords, nonUniqueWords);
        mfl.create(msg);
        
        RequestDispatcher disp = request.getRequestDispatcher("enter_message.jsp");
        disp.forward(request, response);
    }
    
    private Message updateMessage(String message, String uniqueWords, String nonUniqueWords){
        Message m = new Message();
        m.setMessage(message);
        m.setListUnique(uniqueWords);
        m.setListNonUnique(nonUniqueWords);
        return m;
    }
}
