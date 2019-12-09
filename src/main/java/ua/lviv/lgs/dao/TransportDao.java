package ua.lviv.lgs.dao;

import ua.lviv.lgs.entity.Tour;
import ua.lviv.lgs.entity.Transport;


public interface TransportDao {
    void add(Transport transport);
    void edit(Transport transport);
    void delete(int idTransport);
    Transport findById(int idTransport);
}
