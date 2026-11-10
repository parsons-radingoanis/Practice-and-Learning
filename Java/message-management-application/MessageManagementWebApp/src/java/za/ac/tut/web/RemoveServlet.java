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
public class RemoveServlet extends HttpServlet {
    @EJB
    private MessageFacadeLocal mfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id = Long.parseLong(request.getParameter("msg_id"));
        
        List<Message> list = mfl.findAll();
        
          for(int i = 0; i < list.size(); i++){
              Message m = list.get(i);
              if(m.getMessageId() == id){
                  mfl.remove(m);
              }
          }
        
        
        request.setAttribute("id", id);
        
        RequestDispatcher disp = request.getRequestDispatcher("remove_outcome.jsp");
        disp.forward(request, response);
    }
}
