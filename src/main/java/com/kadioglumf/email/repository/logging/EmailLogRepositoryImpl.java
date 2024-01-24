package com.kadioglumf.email.repository.logging;

import com.kadioglumf.email.model.EmailLogModel;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class EmailLogRepositoryImpl implements EmailLogRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void save(EmailLogModel logModel) {
        entityManager.persist(logModel);
    }
}
