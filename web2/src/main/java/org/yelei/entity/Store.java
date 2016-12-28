package org.yelei.entity;

/**
 * Created by yelei on 16-12-8.
 */
public class Store {
    private Integer id;
    private String storeName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStoreName() {
        return storeName;
    }

    public Store setStoreName(String storeName) {
        this.storeName = storeName;
        return null;
    }
}
