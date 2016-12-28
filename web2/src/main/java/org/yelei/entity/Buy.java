package org.yelei.entity;

/**
 * Created by yelei on 16-12-25.
 */
public class Buy {
    private Integer id;
    private Integer goodsId;
    private Integer clientId;
    private Integer number;
    private Integer state;
    private Integer stroeId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getStroeId() {
        return stroeId;
    }

    public void setStroeId(Integer stroeId) {
        this.stroeId = stroeId;
    }
}
