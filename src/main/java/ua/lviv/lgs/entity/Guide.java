package ua.lviv.lgs.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.List;


@Entity
public class Guide {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int idGuide;

    @Column
    private String guideName;

    @Column
    private String guideSurname;

    @Column
    private String phone;

    @Column
    private Date birthDate;

    @OneToMany(mappedBy = "guide")
    private List<Timetable> timetables;



    public Guide() {
    }

    public Guide(String guideName, String guideSurname, String phone, Date birthDate) {
        this.guideName = guideName;
        this.guideSurname = guideSurname;
        this.phone = phone;
        this.birthDate = birthDate;
    }

    public int getIdGuide() {
        return idGuide;
    }

    public void setIdGuide(int idGuide) {
        this.idGuide = idGuide;
    }

    public String getGuideName() {
        return guideName;
    }

    public void setGuideName(String guideName) {
        this.guideName = guideName;
    }

    public String getGuideSurname() {
        return guideSurname;
    }

    public void setGuideSurname(String guideSurname) {
        this.guideSurname = guideSurname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public List<Timetable> getTimetables() {
        return timetables;
    }

    public void setTimetables(List<Timetable> timetables) {
        this.timetables = timetables;
    }
}
