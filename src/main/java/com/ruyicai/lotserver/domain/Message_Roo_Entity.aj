// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import com.ruyicai.lotserver.domain.Message;
import java.lang.Integer;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Message_Roo_Entity {
    
    declare @type: Message: @Entity;
    
    declare @type: Message: @Table(name = "vol_message");
    
    @PersistenceContext(unitName = "persistenceUnit")
    transient EntityManager Message.entityManager;
    
    @Transactional("transactionManager")
    public void Message.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional("transactionManager")
    public void Message.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Message attached = Message.findMessage(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional("transactionManager")
    public void Message.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional("transactionManager")
    public void Message.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional("transactionManager")
    public Message Message.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Message merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Message.entityManager() {
        EntityManager em = new Message().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Message.countMessages() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Message o", Long.class).getSingleResult();
    }
    
    public static List<Message> Message.findAllMessages() {
        return entityManager().createQuery("SELECT o FROM Message o", Message.class).getResultList();
    }
    
    public static Message Message.findMessage(Integer id) {
        if (id == null) return null;
        return entityManager().find(Message.class, id);
    }
    
    public static List<Message> Message.findMessageEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Message o", Message.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
