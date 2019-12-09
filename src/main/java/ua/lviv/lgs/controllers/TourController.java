package ua.lviv.lgs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.lviv.lgs.entity.Tour;
import ua.lviv.lgs.services.TourService;
import ua.lviv.lgs.services.UserService;

import java.sql.Date;
import java.sql.Time;

@Controller
public class TourController {
    @Autowired
    private UserService userService;
    @Autowired
    private TourService tourService;
    @RequestMapping(value = "/tour/add", method = RequestMethod.GET)
    private String openAddTourPage() {
        return "addTour";
    }
    @RequestMapping(value = "/tour/add", method = RequestMethod.POST)
    private String addTour(@RequestParam("TourtourTitle") String tourTitle,
                           @RequestParam("Tourvenue") String venue,
                           @RequestParam("TourtypeTours") String typeTours,
                           @RequestParam("Tourduration") String duration,
                           @RequestParam("TourstartTour") String startTour,
                           @RequestParam("Tourprice") Double price) {
        tourService.add(tourTitle, venue, typeTours, duration, startTour, price);
        return "redirect:/tour/add"; }
    @RequestMapping(value = "/deleteTour/{idTour}")
    private String deleteTour(@PathVariable Integer idTour) {
        tourService.delete(idTour);
        return "redirect:/";
    }
    @RequestMapping(value = "/TourEdit/{idTour}", method = RequestMethod.GET)
    private String editTour(@PathVariable Integer idTour, Model model) {
        Tour tour = tourService.findById(idTour);
        model.addAttribute("tourism", tour);
        return "TourEdit"; }

    @RequestMapping(value = "/tour/edit", method = RequestMethod.POST)
    private String Toureditt(@RequestParam("Tourtid") Integer idTour,
                             @RequestParam("TourtourTitle") String tourTitle,
                             @RequestParam("Tourvenue") String venue,
                             @RequestParam("TourtypeTours") String typeTours,
                             @RequestParam("Tourduration") String duration,
                             @RequestParam("TourstartTour") String startTour,
                             @RequestParam("Tourprice") Double price) {
        tourService.edit(idTour, tourTitle, venue, typeTours, duration, startTour, price);
        return "redirect:/";
    }
}