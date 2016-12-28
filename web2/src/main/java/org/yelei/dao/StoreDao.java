package org.yelei.dao;

import org.yelei.entity.Store;

import java.util.List;

/**
 * Created by yelei on 16-12-12.
 */
public interface StoreDao {
    public Store selectByStoreName(String storeName);
    public Integer addStore(Store store);
    public List<Store> selectAll();
    public Store selectStoreName(Integer id);
    public Integer delectStore(String storeName);
}
