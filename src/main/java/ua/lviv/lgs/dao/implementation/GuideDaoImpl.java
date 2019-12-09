package ua.lviv.lgs.dao.implementation;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.GuideDao;
import ua.lviv.lgs.entity.Guide;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;

/**
 * Created by Yura on 23.02.2017.
 */
@Repository
public class GuideDaoImpl implements GuideDao{

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Transactional
    public void add(Guide guide) {
        entityManager.persist(guide);
    }

    @Transactional
    public void edit(Guide guide) {
        entityManager.merge(guide);
    }

    @Transactional
    public void delete(int idGuide) {
        entityManager.remove(entityManager.find(Guide.class, idGuide));
    }

    @Transactional
    public Guide findById(int idGuide) {
        return entityManager.find(Guide.class, idGuide);
    }
}
