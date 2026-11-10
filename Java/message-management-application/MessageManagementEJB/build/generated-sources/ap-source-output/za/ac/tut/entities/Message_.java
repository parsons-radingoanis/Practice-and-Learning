package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2026-11-09T14:09:47")
@StaticMetamodel(Message.class)
public class Message_ { 

    public static volatile SingularAttribute<Message, String> name;
    public static volatile SingularAttribute<Message, Long> messageId;
    public static volatile SingularAttribute<Message, Long> id;
    public static volatile SingularAttribute<Message, String> text;
    public static volatile SingularAttribute<Message, String> priority;
    public static volatile SingularAttribute<Message, Date> creationDate;

}