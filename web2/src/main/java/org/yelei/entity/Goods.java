package org.yelei.entity;

/**
 * Created by yelei on 16-12-8.
 */
public class Goods {
    private Integer id;
    private String goodsName;
    private String describ;
    private double price;
    private String typeName;
    private String goodsImage;
    private Integer storeId;
    private Integer userId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getDescrib() {
        return describ;
    }

    public void setDescrib(String describ) {
        this.describ = describ;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getGoodsImage(){
        return goodsImage;
    }

    public void setGoodsImage(String goodsImage){
        this.goodsImage = goodsImage;
    }

    public Integer getStoreId(){
        return storeId;
    }

    public void setStoreId(Integer storeId){
        this.storeId = storeId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
