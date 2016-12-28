package org.yelei.dao;

import org.yelei.entity.ShopCar;

import java.util.List;

/**
 * Created by yelei on 16-12-17.
 */
public interface ShopCarDao {
    public Integer inserToCar(ShopCar shopCar);
    public List<ShopCar> selectByClientId(Integer clientId);
    public ShopCar selectByGoodsId(Integer goodsId,Integer clientId);
    public Integer deleteByGoodsId(Integer goodsId);

}
