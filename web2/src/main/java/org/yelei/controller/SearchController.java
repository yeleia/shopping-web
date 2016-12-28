package org.yelei.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.yelei.entity.*;
import org.yelei.lucene.GoodsIndex;
import org.yelei.service.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yelei on 16-12-21.
 */
@Controller
@RequestMapping("/")
public class SearchController {
    @Resource
    private UserService userService;
    @Resource
    private StoreService storeService;
    @Resource
    private WaitService waitService;
    @Resource
    private ClientService clientService;
    @Resource
    private GoodsSerive goodsSerive;
    private GoodsIndex goodsIndex=new GoodsIndex();
    @RequestMapping("/search")
    public ModelAndView search1(@RequestParam(value="str",required=false)String str, HttpServletRequest request)
    throws Exception{
        System.out.println(str);
        request.getSession().setAttribute("str",str);
        ModelAndView modelAndView=new ModelAndView();
        List<Goods> goods=goodsIndex.searchGoods(str.trim());
        if(goods!=null){
            List<Goods> goods1=goodsSerive.selectByGoodName(str);
            List<User> users=new  ArrayList<User>();
            for(int i=0;i<goods1.size();i++){
                Integer id=goods1.get(i).getUserId();
                if(i==0||(i>0&&id!=goods1.get(i-1).getUserId())){
                    User user=userService.selectAdress(id);
                    users.add(user);
                }
            }


            modelAndView.addObject("user",users);
            modelAndView.addObject("goods", goods1);
            modelAndView.setViewName("search1");
        }else {
            modelAndView.addObject("goods",goods);
        }
        return modelAndView;

        }
    @RequestMapping("/wait3")
    public String waitgood(@RequestParam(value="id")Integer id, Wait wait, HttpServletRequest request,RedirectAttributes attributes)throws Exception{
        Integer clientId =(Integer) request.getSession().getAttribute("clientId");
        if(clientId!=null){

            Goods goods = goodsSerive.selectByGoodsId(id);
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
            String str= (String)request.getSession().getAttribute("str");
            attributes.addAttribute("str",str);

            return "redirect:/search";
        }else{
            return "redirect:/signin.jsp";
        }
    }




}

