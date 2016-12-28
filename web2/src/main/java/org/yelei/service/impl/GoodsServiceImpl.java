package org.yelei.service.impl;

import org.springframework.stereotype.Service;
import org.yelei.dao.GoodsDao;
import org.yelei.entity.Goods;
import org.yelei.service.GoodsSerive;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yelei on 16-12-10.
 */
@Service("goodsService")
public class GoodsServiceImpl implements GoodsSerive {
    @Resource
    private GoodsDao goodsDao;
    public Integer insertGoods(Goods goods){

        return goodsDao.insertGoods(goods);
    }
    public Integer deleteGoodsById(Integer id){
        return goodsDao.deleteGoodsById(id);
    }
    public Integer updateGoods(Goods goods){
        return goodsDao.updateGoods(goods);
    }
    public List<Goods> slectByStoreId(Integer storeId){
        return goodsDao.slectByStoreId(storeId);
    }
    public List<Goods> selectAllGoods(){
        return goodsDao.selectAllGoods();
    }
    public List<Goods> selectGoods(){
        return goodsDao.selectGoods();
    }
    public List<Goods> selectfood(Integer storeId){
        return goodsDao.selectfood(storeId);
    }
    public List<Goods> selectUse(Integer storeId){
        return goodsDao.selectUse(storeId);
    }
    public Goods selectByGoodsId(Integer id){
        return goodsDao.selectByGoodsId(id);
    }
    public List<Goods> selectByGoodName(String goodsName){
        return goodsDao.selectByGoodName(goodsName);
    }
    public Integer delectByUserId(Integer userId){
        return goodsDao.delectByUserId(userId);
    }

}
