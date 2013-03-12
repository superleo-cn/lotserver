// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lotserver.domain;

import com.ruyicai.lotserver.domain.Tbroadcast;
import java.lang.Integer;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Tbroadcast_Roo_Entity {
    
    declare @type: Tbroadcast: @Entity;
    
    declare @type: Tbroadcast: @Table(name = "tbroadcast");
    
    @PersistenceContext(unitName = "persistenceUnit")
    transient EntityManager Tbroadcast.entityManager;
    
    @Transactional("transactionManager")
    public void Tbroadcast.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional("transactionManager")
    public void Tbroadcast.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Tbroadcast attached = Tbroadcast.findTbroadcast(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional("transactionManager")
    public void Tbroadcast.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional("transactionManager")
    public void Tbroadcast.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional("transactionManager")
    public Tbroadcast Tbroadcast.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Tbroadcast merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Tbroadcast.entityManager() {
        EntityManager em = new Tbroadcast().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Tbroadcast.countTbroadcasts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Tbroadcast o", Long.class).getSingleResult();
    }
    
    public static List<Tbroadcast> Tbroadcast.findAllTbroadcasts() {
        return entityManager().createQuery("SELECT o FROM Tbroadcast o", Tbroadcast.class).getResultList();
    }
    
    public static Tbroadcast Tbroadcast.findTbroadcast(Integer id) {
        if (id == null) return null;
        return entityManager().find(Tbroadcast.class, id);
    }
    
    public static List<Tbroadcast> Tbroadcast.findTbroadcastEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Tbroadcast o", Tbroadcast.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}