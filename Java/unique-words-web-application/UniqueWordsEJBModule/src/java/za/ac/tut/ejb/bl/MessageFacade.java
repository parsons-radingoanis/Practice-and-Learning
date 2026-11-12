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
import za.ac.tut.entities.Message;

/**
 *
 * @author Gadifele Parsons Radingoanis
 */
@Stateless
public class MessageFacade extends AbstractFacade<Message> implements MessageFacadeLocal {

    @PersistenceContext(unitName = "UniqueWordsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MessageFacade() {
        super(Message.class);
    }

    @Override
    public List<String> unique(String sentence) {
        sentence = sentence.toLowerCase().replaceAll("[^a-z0-9 ]", "");
        String[] words = sentence.split(" ");
        List<String> list = new ArrayList<>();
        
        for(int i = 0; i < words.length; i++){
            String word = words[i];
            int cnt = 0;
            
            for(int j = 0; j < words.length; j++){
                if(word.equals(words[j])){
                    cnt++;
                }
            }
            
            if(cnt == 1 && !list.contains(word)){
                list.add(word);
            }
        }
        return list;
    }

    @Override
    public List<String> nonUnique(String sentence) {
        sentence = sentence.toLowerCase().replaceAll("[^a-z0-9 ]", "");
        String[] words = sentence.split(" ");
        List<String> list = new ArrayList<>();
        
        for(int i = 0; i < words.length; i++){
            String word = words[i];
            int cnt = 0;
            
            for(int j = 0; j < words.length; j++){
                if(word.equals(words[j])){
                    cnt++;
                }
            }
            
            if(cnt > 1 && !list.contains(word)){
                list.add(word);
            }
        }
        return list;
    }
    
}
