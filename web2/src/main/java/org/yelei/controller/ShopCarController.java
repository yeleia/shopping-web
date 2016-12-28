package org.yelei.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.yelei.entity.*;
import org.yelei.service.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yelei on 16-12-18.
 */
@Controller
@RequestMapping("/")
public class ShopCarController {
    @Resource
    private ClientService clientService;
    @Resource
    private ShopCarService shopCarService;
    @Resource
    private GoodsSerive goodsSerive;
    @Resource
    private WaitService waitService;
    @Resource
    private StoreService storeService;
    @Resource
    private UserService userService;

    /**
     *
     * @param id
     * @param shopCar
     * @param goods
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/shopcar")
    public String shopcar(@RequestParam(value="id")Integer id,ShopCar shopCar, Goods goods, HttpServletRequest request)throws Exception {

        Integer clientId =(Integer) request.getSession().getAttribute("clientId");
        if (clientId != null){
            shopCar.setGoodsId(id);
            shopCar.setClientId(clientId);
            /*System.out.println(clientId);
            System.out.println(clientId + shopCar.getGoodsId());*/
            ShopCar shopCar1 = shopCarService.selectByGoodsId(shopCar.getGoodsId(),clientId);
                if (shopCar1 == null){
                    System.out.println("ghhhhhhh");
                    Integer j = shopCarService.inserToCar(shopCar);
                    System.out.println(j+"ggggggggggggg");
                    return "redirect:/test3.jsp";
                }else {
                    System.out.println("已经加入购物车");
                    return "redirect:/test3.jsp";
                }
            }else{
            return "redirect:/signin.jsp";
        }

    }
    @RequestMapping("/shopcar1")

    public String shopcar1(@RequestParam(value="id")Integer id, RedirectAttributes attributes, ShopCar shopCar, Goods goods, Store store, HttpServletRequest request,
                           HttpServletResponse response)throws Exception {

        Integer clientId = (Integer) request.getSession().getAttribute("clientId");
            shopCar.setGoodsId(id);
            shopCar.setClientId(clientId);

            /*System.out.println(clientId);
            System.out.println(clientId + shopCar.getGoodsId());*/
            ShopCar shopCar1 = shopCarService.selectByGoodsId(shopCar.getGoodsId(),clientId);
            if (shopCar1 == null){
                Integer j = shopCarService.inserToCar(shopCar);
                System.out.println(j+"ggggggggggggg");
                goods.setId(shopCar.getGoodsId());
                Goods goods1=goodsSerive.selectByGoodsId(goods.getId());
                Integer i=goods1.getStoreId();
                System.out.println(i+"测试哦");
                attributes.addAttribute("id",i);
                return "redirect:/store";
            }else {
                goods.setId(shopCar.getGoodsId());
                Goods goods1=goodsSerive.selectByGoodsId(goods.getId());
                Integer i=goods1.getStoreId();
                System.out.println(i+"哦哦");
                attributes.addAttribute("id",i);
                return "redirect:/store";
            }

          }
    @RequestMapping("/shopcar2")
    public String shopcar2(@RequestParam(value="id")Integer id,ShopCar shopCar, Goods goods, HttpServletRequest request,
                           HttpServletResponse response,RedirectAttributes attributes)throws Exception {

        Integer clientId = (Integer) request.getSession().getAttribute("clientId");
        if (clientId != null){
            shopCar.setGoodsId(id);
            shopCar.setClientId(clientId);
            /*System.out.println(clientId);
            System.out.println(clientId + shopCar.getGoodsId());*/
            ShopCar shopCar1 = shopCarService.selectByGoodsId(shopCar.getGoodsId(),clientId);
            if (shopCar1 == null){
                System.out.println("ghhhhhhh");
                Integer j = shopCarService.inserToCar(shopCar);
                System.out.println(j+"ggggggggggggg");
               String str= (String)request.getSession().getAttribute("str");
                System.out.println(str+"test str");
                attributes.addAttribute("str",str);
                return "redirect:/search";
            }else {
                System.out.println("已经加入购物车");
                String str= (String)request.getSession().getAttribute("str");
                System.out.println(str+"test str");
                attributes.addAttribute("str",str);
                return "redirect:/search";
            }
        }else{
            return "redirect:/signin.jsp";
        }

    }


    @RequestMapping("/client")
    public ModelAndView show(Goods goods, Client client, HttpServletRequest request, HttpServletResponse response)
    throws Exception{
        request.setCharacterEncoding("utf-8");
        ModelAndView modelAndView=new ModelAndView();
        Integer clientId=(Integer)request.getSession().getAttribute("clientId");
        if (clientId!=null){
            List<ShopCar> shopCar=shopCarService.selectByClientId(clientId);
            List<Goods> goodses=new ArrayList<Goods>();
            for(int i=0;i<shopCar.size();i++){
                goods.setId(shopCar.get(i).getGoodsId());
                Goods goods1 = goodsSerive.selectByGoodsId(goods.getId());
                goodses.add(goods1);

            }

            //client信息
            client.setId(clientId);
            Client client1=clientService.selectById(client.getId());
            //已买商品
            List<Wait> wait=waitService.selectWait1(clientId);
            modelAndView.addObject("wait",wait);
            modelAndView.addObject("client",client1);
            modelAndView.addObject("goods",goodses);
            modelAndView.setViewName("client");
            return modelAndView;
        }else{
/*
            StringBuffer result=new StringBuffer();
            response.setContentType("text/html;charset=utf-8");

            result.append("<script language='javascript'>alert('请先登录！');</script>");

            ResponseUtil.write(response, result);*/


            modelAndView.setViewName("redirect:/signin.jsp");
            return modelAndView;


           /* return new ModelAndView("redirect:/index");*/
           /* return new ModelAndView(new RedirectView("/index"));*/

        }



    }
    @RequestMapping("/delete")
    public String delete(@RequestParam(value="id")Integer id,ShopCar shopCar)throws Exception{
        shopCar.setGoodsId(id);
        Integer i=shopCarService.deleteByGoodsId(shopCar.getGoodsId());


        return "redirect:/test4.jsp";
    }
    @RequestMapping("/wait4")
    public String waitgood(@RequestParam(value="id")Integer id, Wait wait, RedirectAttributes attributes,
                           ShopCar shopCar, Goods goods1,HttpServletRequest request)throws Exception{
        Integer clientId =(Integer) request.getSession().getAttribute("clientId");
        shopCar.setGoodsId(id);
        shopCar.setClientId(clientId);
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
            Integer j=waitService.insertgoods(wait);
            goods1.setId(shopCar.getGoodsId());
            Goods goods2=goodsSerive.selectByGoodsId(goods1.getId());
            Integer i=goods2.getStoreId();
            System.out.println(i+"测试哦");
            attributes.addAttribute("id",i);
            return "redirect:/store";
        }else{
            goods1.setId(shopCar.getGoodsId());
            Goods goods2=goodsSerive.selectByGoodsId(goods1.getId());
            Integer i=goods2.getStoreId();
            System.out.println(i+"哦哦");
            attributes.addAttribute("id",i);

            return "redirect:/store";

        }
    }


}
