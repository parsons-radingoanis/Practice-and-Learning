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

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
public class AnalyzeServlet extends HttpServlet {

    @EJB
    private MessageFacadeLocal mfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String sentence = request.getParameter("msg");
        
        List<String> uniqueList = mfl.unique(sentence);
        List<String> nonUniqueList = mfl.nonUnique(sentence);
        
        updateSession(session, sentence, uniqueList, nonUniqueList);
        
        request.setAttribute("sentence", sentence);
        request.setAttribute("uniqueList", uniqueList);
        request.setAttribute("nonUniqueList", nonUniqueList);
        
        RequestDispatcher disp = request.getRequestDispatcher("outcome.jsp");
        disp.forward(request, response);
    }
    
    private void updateSession(HttpSession session, String sentence, List<String> uniqueList, List<String> nonUniqueList){
        String message = (String)session.getAttribute("message");
        List<String> unique = (List<String>)session.getAttribute("unique");
        List<String> nonUnique = (List<String>)session.getAttribute("nonUnique");
        
        message = sentence;
        unique = uniqueList;
        nonUnique = nonUniqueList;
        
        session.setAttribute("message", message);
        session.setAttribute("unique", unique);
        session.setAttribute("nonUnique", nonUnique);
    }
}
