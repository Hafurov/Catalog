package ua.lviv.lgs.dao.implementation;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.TourDao;
import ua.lviv.lgs.entity.Tour;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import java.util.List;

@Repository
public class TourDaoImpl implements TourDao {

    private final EntityManager entityManager;

    public TourDaoImpl(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Transactional
    public void add(Tour tour) {
        entityManager.persist(tour);
    }

    @Transactional
    public void edit(Tour tour) {
        entityManager.merge(tour);
    }

    @Transactional
    public void delete(int idTour) {
        entityManager.remove(entityManager.find(Tour.class, idTour));
    }

    @Transactional
    public Tour findById(int idTour) {
        return entityManager.find(Tour.class, idTour);
    }

    @Transactional
    public List<Tour> findAll() {
        return entityManager.createQuery("select t from Tour t").getResultList();
    }
}