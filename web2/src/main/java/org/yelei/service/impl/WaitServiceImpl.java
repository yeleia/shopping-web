package org.yelei.service.impl;

import org.springframework.stereotype.Service;
import org.yelei.dao.WaitDao;
import org.yelei.entity.Wait;
import org.yelei.service.WaitService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yelei on 16-12-25.
 */
@Service("waitService")
public class WaitServiceImpl implements WaitService {
    @Resource
    private WaitDao waitDao;
    public Integer insertgoods(Wait wait){
        return waitDao.insertgoods(wait);
    }
    public List<Wait> selectgoods(Integer clientId){
        return waitDao.selectgoods(clientId);
    }
    public List<Wait> selectgoodses(String userName){
        return waitDao.selectgoodses(userName);
    }
    public Integer updatewait(Wait wait){
        return waitDao.updatewait(wait);
    }
    public List<Wait> selectWait(Integer clientId){
        return waitDao.selectWait(clientId);
    }
    public Integer updatewaits(Wait wait){
        return waitDao.updatewaits(wait);
    }
    public List<Wait> selectgoodses1(String userName){
        return waitDao.selectgoodses1(userName);
    }
    public List<Wait> selectWait1(Integer clientId){
        return waitDao.selectWait1(clientId);
    }

}
