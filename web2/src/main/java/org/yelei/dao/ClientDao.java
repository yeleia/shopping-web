package org.yelei.dao;

import org.yelei.entity.Client;

/**
 * Created by yelei on 16-12-11.
 */
public interface ClientDao {
    public Integer Cregister(Client client);

    public Client getByname(String Cname);
    public Integer Ctest(Client client);
    public Client getByCPhone(String Cphone);
    public Client getByCtest(String Ctest);
    public  Integer updateClient(Client client);
    public Integer Cimage(Client client);
    public Client selectById(Integer id);
    public Integer updateAll(Client client);
}


