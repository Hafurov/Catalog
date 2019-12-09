package ua.lviv.lgs.entity;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;
import java.util.List;

@Entity
public class Tour {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int idTour;

    @Column
    private String tourTitle;

    @Column
    private String venue;

    @Column
    private String typeTours;

    @Column
    private String duration;

    @Column
    private String startTour;

    @Column
    private Double price;


    @OneToMany(mappedBy = "tour")
    private List<Timetable> timetables;

    public Tour() {
    }

    public Tour(String tourTitle, String venue, String typeTours, String duration, String startTour, Double price) {
        this.tourTitle = tourTitle;
        this.venue = venue;
        this.typeTours = typeTours;
        this.duration = duration;
        this.startTour = startTour;
        this.price = price;
    }


    public int getIdTour() {
        return idTour;
    }

    public void setIdTour(int idTour) {
        this.idTour = idTour;
    }

    public String getTourTitle() {
        return tourTitle;
    }

    public void setTourTitle(String tourTitle) {
        this.tourTitle = tourTitle;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getTypeTours() {
        return typeTours;
    }

    public void setTypeTours(String typeTours) {
        this.typeTours = typeTours;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getStartTour() {
        return startTour;
    }

    public void setStartTour(String startTour) {
        this.startTour = startTour;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public List<Timetable> getTimetables() {
        return timetables;
    }

    public void setTimetables(List<Timetable> timetables) {
        this.timetables = timetables;
    }
}
