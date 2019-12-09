package ua.lviv.lgs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ua.lviv.lgs.dto.UserDto;
import ua.lviv.lgs.entity.User;
import ua.lviv.lgs.services.TourService;
import ua.lviv.lgs.services.UserService;

import java.security.Principal;
import java.util.List;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private TourService tourService;

    @RequestMapping(value = "/user/list", method = RequestMethod.GET)
    private String openUserList(Model model) {
        List<User> userList = userService.findAll();
        model.addAttribute("userss", userList);
        return "userList";
    }

    @RequestMapping(value = "/ban/user/{idUser}")
    private String banUser(@PathVariable Integer idUser) {
        userService.delete(idUser);
        return "redirect:/user/list";
    }

    @RequestMapping(value = "/user/info" , method = RequestMethod.GET)
    @ResponseBody
    public UserDto getUserInfo(Principal principal){

        return UserDto.convertToDto(userService.findByLogin(principal.getName()));
    }
}
