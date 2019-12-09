package ua.lviv.lgs.dao.implementation;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.AgencyDao;
import ua.lviv.lgs.entity.Agency;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;

/**
 * Created by Yura on 23.02.2017.
 */
@Repository
public class AgencyDaoImpl implements AgencyDao{

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Transactional
    public void add(Agency agency) {
        entityManager.persist(agency);
    }

    @Transactional
    public void edit(Agency agency) {
        entityManager.merge(agency);
    }

    @Transactional
    public void delete(int idAgency) {
        entityManager.remove(entityManager.find(Agency.class, idAgency));
    }

    @Transactional
    public Agency findById(int idAgency) {
        return entityManager.find(Agency.class, idAgency);
    }
}
