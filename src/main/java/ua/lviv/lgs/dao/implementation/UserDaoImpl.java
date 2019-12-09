package ua.lviv.lgs.dao.implementation;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.UserDao;
import ua.lviv.lgs.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import java.util.List;

/**
 * Created by Yura on 23.02.2017.
 */
@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext(unitName = "Main")
    private EntityManager entityManager;

    @Transactional
    public void add(User user) {
        entityManager.persist(user);
    }

    @Transactional
    public void edit(User user) {
        entityManager.merge(user);
    }

    @Transactional
    public void delete(int idUser) {
        entityManager.remove(entityManager.find(User.class, idUser));
    }

    @Transactional
    public User findById(int idUser) {
        return entityManager.find(User.class, idUser);
    }


    public User findByFirstName(String firstName) {
        return entityManager.find(User.class, firstName);
    }

    @Transactional
    public User findByLogin(String name) {
        return (User) entityManager.createQuery("select u from User u where u.email = :email").setParameter("email", name).getSingleResult();
    }

    @Transactional
    public List<User> findAll() {
        return entityManager.createQuery("select u from User u").getResultList();
    }
}