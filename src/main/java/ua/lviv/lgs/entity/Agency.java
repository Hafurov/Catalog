package ua.lviv.lgs.entity;

import javax.persistence.*;
import java.util.List;

@Entity
public class Agency {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int idAgency;

    @Column(nullable = false)
    private String agencyName;

    @Column(nullable = false)
    private String manager;

    @Column(nullable = false)
    private int employeesNumber;

    @Column(nullable = false)
    private String phone;


    @OneToMany(mappedBy = "agency")
    private List<Timetable>timetables;

    public Agency() {
    }

    public Agency(String agencyName, String manager, int employeesNumber, String phone) {
        this.agencyName = agencyName;
        this.manager = manager;
        this.employeesNumber = employeesNumber;
        this.phone = phone;
    }

    public int getIdAgency() {
        return idAgency;
    }

    public void setIdAgency(int idAgency) {
        this.idAgency = idAgency;
    }

    public String getAgencyName() {
        return agencyName;
    }

    public void setAgencyName(String agencyName) {
        this.agencyName = agencyName;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public int getEmployeesNumber() {
        return employeesNumber;
    }

    public void setEmployeesNumber(int employeesNumber) {
        this.employeesNumber = employeesNumber;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<Timetable> getTimetables() {
        return timetables;
    }

    public void setTimetables(List<Timetable> timetables) {
        this.timetables = timetables;
    }
}
