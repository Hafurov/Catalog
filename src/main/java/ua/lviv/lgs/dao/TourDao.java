package ua.lviv.lgs.dao;

import ua.lviv.lgs.entity.Timetable;
import ua.lviv.lgs.entity.Tour;

import java.util.List;


public interface TourDao {
    void add(Tour tour);
    void edit(Tour tour);
    void delete(int idTour);
    Tour findById(int idTour);
    List<Tour> findAll();

}
