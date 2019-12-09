package ua.lviv.lgs.dao.implementation;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.TransportDao;
import ua.lviv.lgs.entity.Transport;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;

/**
 * Created by Yura on 23.02.2017.
 */
@Repository
public class TransportDaoImpl implements TransportDao{

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Transactional
    public void add(Transport transport) {
        entityManager.persist(transport);
    }

    @Transactional
    public void edit(Transport transport) {
        entityManager.merge(transport);
    }

    @Transactional
    public void delete(int idTransport) {
        entityManager.remove(entityManager.find(Transport.class, idTransport));
    }

    @Transactional
    public Transport findById(int idTransport) {
        return entityManager.find(Transport.class, idTransport);
    }
}
