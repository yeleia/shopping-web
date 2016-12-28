package org.yelei.controller;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.yelei.entity.*;
import org.yelei.service.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by yelei on 16-12-25.
 */
@Controller
@RequestMapping("/")
public class WaitController {
    @Resource
    private WaitService waitService;
    @Resource
    private GoodsSerive goodsService;
    @Resource
    private StoreService storeService;
    @Resource
    private UserService userService;
    @Resource
    private ClientService clientService;
    @RequestMapping("/wait")
    public String waitgoods(@RequestParam(value="id")Integer id, Wait wait, HttpServletRequest request)throws Exception{
        Integer clientId =(Integer) request.getSession().getAttribute("clientId");
        if(clientId!=null){
            Goods goods = goodsService.selectByGoodsId(id);
            wait.setGoodsId(id);
            wait.setGoodsImage(goods.getGoodsImage());
            wait.setGoodsName(goods.getGoodsName());
            wait.setGoodsPrice(goods.getPrice());
            Store store=storeService.selectStoreName(goods.getStoreId());
            wait.setStoreName(store.getStoreName());
            User user=userService.selectAdress(goods.getUserId());
            System.out.println(goods.getUserId()+"userId");
            wait.setUserName(user.getUserName());
            wait.setUserPhone(user.getPhone());
            Client client=clientService.selectById(clientId);
            wait.setClientId(clientId);
            wait.setClientAdrss(client.getCadress());
            wait.setClientName(client.getCname());
            wait.setClientphone(client.getCphone());
            wait.setState(0);
            wait.setNumber(wait.getNumber());

            Integer i=waitService.insertgoods(wait);
            return "redirect:/test3.jsp";
        }else{
            return "redirect:/signin.jsp";
        }
    }
    @RequestMapping("/wait2")
    public String waitgood(@RequestParam(value="id")Integer id, Wait wait, HttpServletRequest request)throws Exception{
        Integer clientId =(Integer) request.getSession().getAttribute("clientId");
        if(clientId!=null){
            Goods goods = goodsService.selectByGoodsId(id);
            wait.setGoodsId(id);
            wait.setGoodsImage(goods.getGoodsImage());
            wait.setGoodsName(goods.getGoodsName());
            wait.setGoodsPrice(goods.getPrice());
            Store store=storeService.selectStoreName(goods.getStoreId());
            wait.setStoreName(store.getStoreName());
            User user=userService.selectAdress(goods.getUserId());
            System.out.println(goods.getUserId()+"userId");
            wait.setUserName(user.getUserName());
            wait.setUserPhone(user.getPhone());
            Client client=clientService.selectById(clientId);
            wait.setClientId(clientId);
            wait.setClientAdrss(client.getCadress());
            wait.setClientName(client.getCname());
            wait.setClientphone(client.getCphone());
            wait.setState(0);
            wait.setNumber(wait.getNumber());

            Integer i=waitService.insertgoods(wait);
            return "redirect:/test4.jsp";
        }else{
            return "redirect:/signin.jsp";
        }
    }


    public WaitController() {
    }

    @RequestMapping("/cwait")
    public ModelAndView showToClient(Wait wait,HttpServletRequest request)throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        Integer clientId =(Integer) request.getSession().getAttribute("clientId");
        List<Wait> wait1=waitService.selectgoods(clientId);
        System.out.println(wait1.size()+"测试查询到没");
        List<Wait> wait2=waitService.selectWait(clientId);
        modelAndView.addObject("wait",wait1);
        modelAndView.addObject("wait1",wait2);
        modelAndView.setViewName("cwait");
        return modelAndView;
    }
    @RequestMapping("/send")
    public ModelAndView showToUser(Wait wait,HttpServletRequest request)throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        User user=(User) SecurityUtils.getSubject().getSession().getAttribute("currentUser");
        List<Wait> waits=waitService.selectgoodses(user.getUserName());
        List<Wait> waits1=waitService.selectgoodses1(user.getUserName());
        modelAndView.addObject("wait",waits);
        modelAndView.addObject("waits1",waits1);
        modelAndView.setViewName("send");
        return modelAndView;
    }
    @RequestMapping("/sendTo")
    public String sendTo(@RequestParam(value="id")Integer id,Wait wait,HttpServletRequest request)throws Exception{
       Integer i=waitService.updatewait(wait);
        return "redirect:/test8.jsp";
    }
    @RequestMapping("/had")
    public String had(@RequestParam(value="id")Integer id,Wait wait)throws Exception{
       Integer i=waitService.updatewaits(wait);

        return "redirect:/test9.jsp";
    }

}
