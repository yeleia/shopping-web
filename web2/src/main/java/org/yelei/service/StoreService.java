package org.yelei.service;

import org.yelei.entity.Store;

import java.util.List;

/**
 * Created by yelei on 16-12-13.
 */
public interface StoreService {
    public Store selectByStoreName(String storeName);
    public Integer addStore(Store store);
    public List<Store> selectAll();
    public Store selectStoreName(Integer id);
    public Integer delectStore(String storeName);
}
