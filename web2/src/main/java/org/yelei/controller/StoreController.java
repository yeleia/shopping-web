package org.yelei.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.yelei.entity.*;
import org.yelei.service.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yelei on 16-12-13.
 */
@Controller
@RequestMapping("/")
public class StoreController {
    @Resource
    private UserService userService;
    @Resource
    private StoreService storeService;
    @Resource
    private GoodsSerive goodsSerive;
    @Resource
    private CommentService commentService;
    @Resource
    private ClientService clientService;
    @Resource
    private WaitService waitService;
    @RequestMapping("/index")
    public ModelAndView showStore(Store store, Client client, HttpServletRequest request)throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        //怎样把店铺传到前端
        List<Store> store1=storeService.selectAll();
      /*  System.out.println(store1.size());*/
        List<User> users=new ArrayList<User>();
        for(int i=0;i<store1.size();i++){
            String storeName=store1.get(i).getStoreName();
          /*  System.out.println(storeName+"测试");*/
            User user=userService.getByStoreName(storeName);
            users.add(user);

        }
        modelAndView.addObject("user1",users);

   /*     modelAndView.addObject("user1",user)*/
        modelAndView.addObject("store",store1);
        //零食商品部分
        //查询类型为零食的所有商品
        List<Goods> goods=goodsSerive.selectAllGoods();
        System.out.println(goods.size()+"得到了");
        List<User> users1=new ArrayList<User>();
        for(int i=0;i<goods.size();i++){
          Integer id=goods.get(i).getUserId();
            if(i==0||(i>0 && id!=goods.get(i-1).getUserId())){
                User user = userService.selectAdress(id);
                users1.add(user);
            }

        }
        System.out.println(users1.size());
        modelAndView.addObject("user2",users1);
        modelAndView.addObject("goods",goods);
        //生活用品部分
        //查询类型为生活用品的所有商品
        List<Goods> goodses=goodsSerive.selectGoods();
        System.out.println(goodses.size()+"个生活用品");
        List<User> users2=new ArrayList<User>();
        for(int i=0;i<goodses.size();i++){
            Integer id=goodses.get(i).getUserId();
            if(i==0||(i>0&&id!=goodses.get(i-1).getUserId())){
                User user=userService.selectAdress(id);
                users2.add(user);
            }
        }
        System.out.println(users2.size());
        modelAndView.addObject("user3",users2);
        modelAndView.addObject("goods1",goodses);
        //评论部分
       List<Comment> comment=commentService.selectComment();
        modelAndView.addObject("comment",comment);
        //首页client信息
        Integer clientId=(Integer)request.getSession().getAttribute("clientId");
        if (clientId==null){
            client.setCimage("20161218112000.jpg");
            client.setCname("名字");
            client.setCadress("地址");
            client.setCphone("号码");
            modelAndView.addObject("client1",client);
        }else{
            client.setId(clientId);
            Client client1=clientService.selectById(client.getId());
            modelAndView.addObject("client1",client1);
        }
        modelAndView.setViewName("index");
        return  modelAndView;
    }
    @RequestMapping("/store")
    public ModelAndView store(@RequestParam(value="id")Integer id, Store store,User user, Goods goods){
        ModelAndView modelAndView=new ModelAndView();
        System.out.println(id);
        goods.setStoreId(id);
        //单个店铺的全部商品
        List<Goods> goods1=goodsSerive.slectByStoreId(goods.getStoreId());
        //单个店铺的零食商品
        List<Goods> goods2=goodsSerive.selectfood(goods.getStoreId());
        //单个店铺的生活用品
        List<Goods> goods3=goodsSerive.selectUse(goods.getStoreId());
        //卖家细信息
        Store store1=storeService.selectStoreName(id);
        System.out.println(store1.getStoreName());
        User user1=userService.getByStoreName(store1.getStoreName());
        System.out.println(user1.getUserName());

        modelAndView.addObject("goods1",goods1);
        modelAndView.addObject("goods2",goods2);
        modelAndView.addObject("goods3",goods3);
        modelAndView.addObject("user",user1);
        modelAndView.setViewName("store");
        return modelAndView;
    }


}
