package org.yelei.service.impl;

import org.springframework.stereotype.Service;
import org.yelei.dao.ShopCarDao;
import org.yelei.entity.ShopCar;
import org.yelei.service.ShopCarService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yelei on 16-12-18.
 */
@Service("shopCarService")
public class ShopCarServiceImpl implements ShopCarService {
    @Resource
    private ShopCarDao shopCarDao;
    public Integer inserToCar(ShopCar shopCar){
        return shopCarDao.inserToCar(shopCar);
    }
    public List<ShopCar> selectByClientId(Integer clientId){
        return shopCarDao.selectByClientId(clientId);
    }
    public ShopCar selectByGoodsId(Integer goodsId,Integer clientId){
        return shopCarDao.selectByGoodsId(goodsId,clientId);
    }
    public Integer deleteByGoodsId(Integer goodsId){
        return shopCarDao.deleteByGoodsId(goodsId);
    }


}
