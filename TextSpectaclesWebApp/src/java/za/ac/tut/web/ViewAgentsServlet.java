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
import za.ac.tut.ejb.bl.AgentFacadeLocal;
import za.ac.tut.entities.Agent;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
public class ViewAgentsServlet extends HttpServlet {
        
    @EJB
    private AgentFacadeLocal afl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Agent> agents = afl.findAll();
        
        request.setAttribute("agents", agents);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_all_agents_outcome.jsp");
        disp.forward(request, response);
    }
}
