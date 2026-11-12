/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.AgentFacadeLocal;
import za.ac.tut.entities.Agent;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
public class AddServlet extends HttpServlet {
        
    @EJB
    private AgentFacadeLocal afl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        Character gender = request.getParameter("gender").charAt(0);
        
        Agent agent = createAgent(id, name, gender);
        afl.create(agent);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_agent_outcome.jsp");
        disp.forward(request, response);
    }
    
    private Agent createAgent(
      Long id, String name, Character gender
    ){
        Agent a = new Agent();
        a.setId(id);
        a.setFullName(name);
        a.setGender(gender);
        return a;
    }
}
