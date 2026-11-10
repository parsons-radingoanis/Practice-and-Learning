/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Message;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
@Stateless
public class MessageFacade extends AbstractFacade<Message> implements MessageFacadeLocal {

    @PersistenceContext(unitName = "MessageManagementEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MessageFacade() {
        super(Message.class);
    }

    @Override
    public Long totalNumLowPriority() {
        String sql = "SELECT COUNT(s) FROM Message s WHERE s.priority = 'Low' ";
        Query query = em.createQuery(sql);
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public List<String> getMessagesPerPriority(List<Message> messages, String priority) {
        List<String> list = new ArrayList<>();
        
        for(int i = 0; i < messages.size(); i++){
            Message m = messages.get(i);
            String classification = m.getPriority();
            
            if(classification.equals(priority)){
                list.add(m.getText());
            }
        }
        
        return list;
    }

    @Override
    public Long worstPerfomingAgent(String agent) {
        String sql = "SELECT COUNT(s) FROM Message s WHERE s.name = :agentName ";
        Query query = em.createQuery(sql);
        query.setParameter("agentName", agent);
        Long cnt = (Long)query.getSingleResult();
        return cnt;
    }

    @Override
    public String getWorstAgentName(List<Message> messages) {
        int cntThapelo = 0, cntParson = 0;
        String agent = "Parson";
        
        for(int i = 0; i < messages.size(); i++){
            Message m = messages.get(i);
            String name = m.getName();
            
            if(name.equals("Thapelo")){
                cntThapelo++;
            } 
              else{
                 cntParson++;
              }
        }
        
        if(cntThapelo < cntParson){
            agent = "Thapelo";
        }        
        return agent;
    }
 
}
