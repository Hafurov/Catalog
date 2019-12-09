package ua.lviv.lgs.services.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.switchuser.SwitchUserGrantedAuthority;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.UserDao;
import ua.lviv.lgs.dto.RegistrationDto;
import ua.lviv.lgs.entity.User;
import ua.lviv.lgs.services.UserService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Yura on 02.03.2017.
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserDao userDao;

    public void add(String firstName, String lastName, String email, String password) {
        User user = new User(firstName,lastName,email,password);
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        user.setPassword(encoder.encode(user.getPassword()));
        userDao.add(user);

    }



    public void edit(int idUser, String firstName, String lastName, String email, String password) {
        User user = userDao.findById(idUser);

        if(firstName != null && !firstName.equalsIgnoreCase("")){
            user.setFirstName(firstName);
        }
        if(lastName != null && !lastName.equalsIgnoreCase("")){
            user.setLastName(lastName);
        }
        if(email != null && !email.equalsIgnoreCase("")){
            user.setEmail(email);
        }
        if(password != null && !password.equalsIgnoreCase("")){
            user.setPassword(password);
        }


        userDao.edit(user);
    }

    @Transactional
    public void delete(int idUser) {
        userDao.delete(idUser);
    }

    public User findById(int idUser) {
        return userDao.findById(idUser);
    }

    public User findByFirstName(String firstName) {
        return userDao.findByFirstName(firstName);
    }

    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
        User user = userDao.findByLogin(name);
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));

        return new org.springframework.security.core.userdetails.User(user.getFirstName(), user.getPassword(), authorities);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }

    public User findByLogin(String name) {
        return userDao.findByLogin(name);
    }
}