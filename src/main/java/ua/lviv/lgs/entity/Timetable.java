package ua.lviv.lgs.entity;

import javax.persistence.*;
import java.sql.Date;


@Entity
public class Timetable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id;
    @Column
    private int idTour;
    @Column
    private int idGuide;
    @Column
    private int idAgency;
    @Column
    private int idTransport;
    @Column
    private int idUser;
    @Column
    private Date date;

    @ManyToOne
    private Agency agency;

    @ManyToOne
    private Guide guide;

    @ManyToOne
    private Tour tour;

    @ManyToOne
    private Transport transport;

    @ManyToOne
    private User user;

   public Timetable() {
    }

    public Timetable(int idTour, int idGuide, int idAgency, int idTransport, int idUser, Date date) {
        this.idTour = idTour;
        this.idGuide = idGuide;
        this.idAgency = idAgency;
        this.idTransport = idTransport;
        this.idUser = idUser;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdTour() {
        return idTour;
    }

    public void setIdTour(int idTour) {
        this.idTour = idTour;
    }

    public int getIdGuide() {
        return idGuide;
    }

    public void setIdGuide(int idGuide) {
        this.idGuide = idGuide;
    }

    public int getIdAgency() {
        return idAgency;
    }

    public void setIdAgency(int idAgency) {
        this.idAgency = idAgency;
    }

    public int getIdTransport() {
        return idTransport;
    }

    public void setIdTransport(int idTransport) {
        this.idTransport = idTransport;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Agency getAgency() {
        return agency;
    }

    public void setAgency(Agency agency) {
        this.agency = agency;
    }

    public Guide getGuide() {
        return guide;
    }

    public void setGuide(Guide guide) {
        this.guide = guide;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public Transport getTransport() {
        return transport;
    }

    public void setTransport(Transport transport) {
        this.transport = transport;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
