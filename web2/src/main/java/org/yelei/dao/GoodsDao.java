package org.yelei.dao;

import org.yelei.entity.Goods;

import java.util.List;

/**
 * Created by yelei on 16-12-10.
 */
public interface GoodsDao {
    public Integer insertGoods(Goods goods);
    public Integer deleteGoodsById(Integer id);
    public Integer updateGoods(Goods goods);
    public List<Goods> slectByStoreId(Integer storeId);
    public List<Goods> selectAllGoods();
    public List<Goods> selectGoods();
    public List<Goods> selectfood(Integer storeId);
    public List<Goods> selectUse(Integer storeId);
    public Goods selectByGoodsId(Integer id);
    public List<Goods> selectByGoodName(String goodsName);
    public Integer delectByUserId(Integer userId);
}
