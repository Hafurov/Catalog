package ua.lviv.lgs.services;

import ua.lviv.lgs.entity.Tour;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

public interface TourService {

    void add(String tourTitle, String venue, String typeTours, String duration, String startTour, Double price);

    void edit(int idTour, String tourTitle, String venue, String typeTours, String duration, String startTour, Double price);

    void delete(int idTour);

    Tour findById(int idTour);

    List<Tour> findAll();
}
