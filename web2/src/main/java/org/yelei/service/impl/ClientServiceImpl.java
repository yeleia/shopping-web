package org.yelei.service.impl;

import org.springframework.stereotype.Service;
import org.yelei.dao.ClientDao;
import org.yelei.entity.Client;
import org.yelei.service.ClientService;

import javax.annotation.Resource;

/**
 * Created by yelei on 16-12-11.
 */
@Service("clientService")
public class ClientServiceImpl implements ClientService {
    @Resource
    private ClientDao clientDao;
    public Client getByname(String Cname){
        return clientDao.getByname(Cname);
    }
    public Integer Cregister(Client client){
        return clientDao.Cregister(client);
    }
    public Integer Ctest(Client client){
        return clientDao.Ctest(client);
    }
    public Client getByCPhone(String phone){
        return clientDao.getByCPhone(phone);
    }
    public Client getByCtest(String test){
        return clientDao.getByCtest(test);
    }
    public Integer updateClient(Client client){
        return clientDao.updateClient(client);
    }
    public Integer Cimage(Client client){
        return clientDao.Cimage(client);
    }
    public Client selectById(Integer id){
        return clientDao.selectById(id);
    }
    public Integer updateAll(Client client){
        return clientDao.updateAll(client);
    }
}
