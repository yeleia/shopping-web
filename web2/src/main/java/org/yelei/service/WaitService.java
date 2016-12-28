package org.yelei.service;

import org.yelei.entity.Wait;

import java.util.List;

/**
 * Created by yelei on 16-12-25.
 */
public interface WaitService {
    public Integer insertgoods(Wait wait);
    public List<Wait> selectgoods(Integer clientId);
    public List<Wait> selectgoodses(String userName);
    public Integer updatewait(Wait wait);
    public List<Wait> selectWait(Integer clientId);
    public Integer updatewaits(Wait wait);
    public List<Wait> selectgoodses1(String userName);
    public List<Wait> selectWait1(Integer clientId);
 }
