package ua.lviv.lgs.services;

import ua.lviv.lgs.dto.RegistrationDto;
import ua.lviv.lgs.entity.Agency;
import ua.lviv.lgs.entity.User;

import java.util.List;

public interface UserService {

    void add(String firstName ,String lastName ,String email ,String password);
    void edit(int idUser , String firstName ,String lastName ,String email ,String password );
    void delete(int idUser);
    User findById(int idUser);
    User findByFirstName(String firstName);
    List<User> findAll();
    User findByLogin(String name);
}
