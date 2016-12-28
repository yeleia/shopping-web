package org.yelei.entity;

/**
 * Created by yelei on 16-12-8.
 */
public class ShopCar {
    private Integer id;
    private Integer goodsId;
    private Integer clientId;
    private Goods goods;

    public Integer getId(){
        return id;
    }

    public void setId(Integer id){
        this.id = id;
    }

    public Integer getGoodsId(){
        return goodsId;
    }

    public void setGoodsId(Integer goodsId){
        this.goodsId = goodsId;
    }

    public Goods getGoods(){
        return goods;
    }

    public void setGoods(Goods goods){
        this.goods = goods;
    }

    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }
}
