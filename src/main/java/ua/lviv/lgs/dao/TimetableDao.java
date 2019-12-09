package ua.lviv.lgs.dao;

import ua.lviv.lgs.entity.Guide;
import ua.lviv.lgs.entity.Timetable;


public interface TimetableDao {
    void add(Timetable timetable);
    void edit(Timetable timetable);
    void delete(int id);
    Timetable findById(int id);
}
