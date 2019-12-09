package ua.lviv.lgs.entity;

import javax.persistence.*;
import java.util.List;


@Entity
public class Transport {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int idTransport;

    @Column
    private String typeTransport;

    @Column
    private String numberSeats;

    @OneToMany(mappedBy = "transport")
    private List<Timetable> timetables;

    public Transport() {
    }

    public Transport(String typeTransport, String numberSeats) {
        this.typeTransport = typeTransport;
        this.numberSeats = numberSeats;
    }

    public int getIdTransport() {
        return idTransport;
    }

    public void setIdTransport(int idTransport) {
        this.idTransport = idTransport;
    }

    public String getTypeTransport() {
        return typeTransport;
    }

    public void setTypeTransport(String typeTransport) {
        this.typeTransport = typeTransport;
    }

    public String getNumberSeats() {
        return numberSeats;
    }

    public void setNumberSeats(String numberSeats) {
        this.numberSeats = numberSeats;
    }

    public List<Timetable> getTimetables() {
        return timetables;
    }

    public void setTimetables(List<Timetable> timetables) {
        this.timetables = timetables;
    }
}
