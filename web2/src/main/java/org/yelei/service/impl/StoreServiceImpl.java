package org.yelei.service.impl;

import org.springframework.stereotype.Service;
import org.yelei.dao.StoreDao;
import org.yelei.entity.Store;
import org.yelei.service.StoreService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yelei on 16-12-13.
 */
@Service("storeService")
public class StoreServiceImpl implements StoreService {
    @Resource
    private StoreDao storeDao;
    public Store selectByStoreName(String storeName){
        return storeDao.selectByStoreName(storeName);
    }
    public Integer addStore(Store store){
        return storeDao.addStore(store);
    }
    public List<Store> selectAll(){
        return storeDao.selectAll();
    }
    public Store selectStoreName(Integer id){
        return storeDao.selectStoreName(id);
    }
    public  Integer delectStore(String storeName){
        return storeDao.delectStore(storeName);
    }
}
