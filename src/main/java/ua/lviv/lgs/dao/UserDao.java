package ua.lviv.lgs.dao;

import ua.lviv.lgs.entity.Transport;
import ua.lviv.lgs.entity.User;

import java.util.List;


public interface UserDao {
    void add(User user);
    void edit(User user);
    void delete(int idUser);
    User findById(int idUser);
    User findByFirstName(String firstName);
    User findByLogin(String name);
    List<User> findAll();
}
