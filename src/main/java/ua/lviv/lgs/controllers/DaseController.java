package ua.lviv.lgs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.lviv.lgs.dao.implementation.UserDaoImpl;
import ua.lviv.lgs.dto.RegistrationDto;
import ua.lviv.lgs.dto.UserDto;
import ua.lviv.lgs.entity.Tour;
import ua.lviv.lgs.entity.User;
import ua.lviv.lgs.services.TourService;
import ua.lviv.lgs.services.UserService;

import java.security.Principal;
import java.sql.Date;
import java.sql.Time;
import java.util.List;


@Controller
public class DaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private TourService tourService;

    @RequestMapping(value = "/Sign-Up-Log-In", method = RequestMethod.GET)
    private String signinpage() {
        return "SignIn";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    private String homepage(Model model) {
        List<Tour> tourList = tourService.findAll();
        model.addAttribute("tourss", tourList);
        return "SityTour";
    }

    @RequestMapping(value = "/Sign-Up-Log-In", method = RequestMethod.POST)
    private String Registration(@RequestParam("userName") String firstName,
                                @RequestParam("userSurname") String lastName,
                                @RequestParam("userEmail") String email,
                                @RequestParam("userPassword") String password) {
        userService.add(firstName, lastName, email, password);
        return "redirect:/Sign-Up-Log-In";

    }

//    @RequestMapping(value = "/Sign-Up-Log-In",method = RequestMethod.POST)
//    @ResponseBody
//    public void Registration(@RequestBody RegistrationDto dto){
//        userService.add(dto);
//    }

}