package ua.lviv.lgs.dao.implementation;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.TimetableDao;
import ua.lviv.lgs.entity.Timetable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;

/**
 * Created by Yura on 23.02.2017.
 */
@Repository
public class TimetableDaoImpl implements TimetableDao {

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Transactional
    public void add(Timetable timetable) {
        entityManager.persist(timetable);
    }

    @Transactional
    public void edit(Timetable timetable) {
        entityManager.merge(timetable);
    }

    @Transactional
    public void delete(int id) {
        entityManager.remove(entityManager.find(Timetable.class, id));
    }

    @Transactional
    public Timetable findById(int id) {
        return entityManager.find(Timetable.class, id);
    }
}
