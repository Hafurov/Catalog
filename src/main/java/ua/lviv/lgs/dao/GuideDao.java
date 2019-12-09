package ua.lviv.lgs.dao;

import ua.lviv.lgs.entity.Agency;
import ua.lviv.lgs.entity.Guide;

public interface GuideDao {

    void add(Guide guide);
    void edit(Guide guide);
    void delete(int idGuide);
    Guide findById(int idGuide);
}
