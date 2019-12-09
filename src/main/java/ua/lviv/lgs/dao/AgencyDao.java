package ua.lviv.lgs.dao;

import ua.lviv.lgs.entity.Agency;


public interface AgencyDao {

    void add(Agency agency);
    void edit(Agency agency);
    void delete(int idAgency);
    Agency findById(int idAgency);
}
