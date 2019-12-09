package ua.lviv.lgs.services.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.lviv.lgs.dao.TourDao;
import ua.lviv.lgs.entity.Tour;
import ua.lviv.lgs.services.TourService;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

@Service
public class TourServiceImpl implements TourService {

    @Autowired
    private TourDao tourDao;

    public void add(String tourTitle, String venue, String typeTours, String duration, String startTour, Double price) {
        tourDao.add(new Tour(tourTitle, venue, typeTours, duration, startTour, price));
    }

    public void edit(int idTour, String tourTitle, String venue, String typeTours, String duration, String startTour, Double price) {
        Tour tour = tourDao.findById(idTour);

        if (tourTitle != null && !tourTitle.equalsIgnoreCase("")) {
            tour.setTourTitle(tourTitle);

        }
        if (venue != null && !venue.equalsIgnoreCase("")) {
            tour.setVenue(venue);
        }
        if (typeTours != null && !typeTours.equalsIgnoreCase("")) {
            tour.setTypeTours(typeTours);
        }
        if (price != 0) {
            tour.setPrice(Math.abs(price));
        }
        if (duration != null) {
            tour.setDuration(duration);
        }
        tourDao.edit(tour);
    }

    @Transactional
    public void delete(int idTour) {
        tourDao.delete(idTour);
    }

    public List<Tour> findAll() {
        return tourDao.findAll();
    }

    public Tour findById(int idTour) {
        return tourDao.findById(idTour);
    }
}
