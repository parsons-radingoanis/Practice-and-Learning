/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Message;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
@Local
public interface MessageFacadeLocal {

    void create(Message message);

    void edit(Message message);

    void remove(Message message);

    Message find(Object id);

    List<Message> findAll();

    List<Message> findRange(int[] range);

    int count();
    
    Long totalNumLowPriority();
    
    List<String> getMessagesPerPriority(List<Message> messages, String priority);
    
    String getWorstAgentName(List<Message> messages);
    
    Long worstPerfomingAgent(String agent);
    
}
