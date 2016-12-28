package org.yelei.service;


import org.yelei.entity.ShopCar;

import java.util.List;

/**
 * Created by yelei on 16-12-18.
 */
public interface ShopCarService {
    public Integer inserToCar(ShopCar shopCar);
    public List<ShopCar> selectByClientId(Integer clientId);
    public ShopCar selectByGoodsId(Integer goodsId,Integer clientId);
    public Integer deleteByGoodsId(Integer goodsId);
}
