package org.yelei.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.yelei.entity.Comment;
import org.yelei.entity.Goods;
import org.yelei.entity.Store;
import org.yelei.entity.User;
import org.yelei.service.CommentService;
import org.yelei.service.GoodsSerive;
import org.yelei.service.StoreService;
import org.yelei.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yelei on 16-12-24.
 */
@Controller
@RequestMapping("/")
public class AdminCtroller {
    @Resource
    private UserService userService;
    @Resource
    private GoodsSerive goodsSerive;
    @Resource
    private CommentService commentService;
    @Resource
    private StoreService storeService;
    @RequestMapping("/admin")
    public ModelAndView admin(HttpServletResponse response)throws Exception{
        ModelAndView modelAndView=new ModelAndView();

        //ｕｓｅｒ
        List<User> user=userService.selectAll();
        //零食
        List<Goods> goods=goodsSerive.selectAllGoods();
        System.out.println(goods.size()+"得到了");
        List<User> users1=new ArrayList<User>();
        for(int i=0;i<goods.size();i++){
            Integer id=goods.get(i).getUserId();
            if(i==0||(i>0 && id!=goods.get(i-1).getUserId())){
                User user1 = userService.selectAdress(id);
                users1.add(user1);
            }
        }
        System.out.println(users1.size());
        //生活用品
        List<Goods> goodses=goodsSerive.selectGoods();
        System.out.println(goodses.size()+"个生活用品");
        List<User> users2=new ArrayList<User>();
        for(int i=0;i<goodses.size();i++){
            Integer id=goodses.get(i).getUserId();
            if(i==0||(i>0&&id!=goodses.get(i-1).getUserId())){
                User user2=userService.selectAdress(id);
                users2.add(user2);
            }
        }
        System.out.println(users2.size());
        //评论
        List<Comment> comment=commentService.selectComment();
        modelAndView.addObject("user",user);
        modelAndView.addObject("user1",users1);
        modelAndView.addObject("goods",goods);
        modelAndView.addObject("user2",users2);
        modelAndView.addObject("goods1",goodses);
        modelAndView.addObject("comment",comment);
        modelAndView.setViewName("admin");
        return modelAndView;
    }
    @RequestMapping("/delectuser")
    public String delectuser(@RequestParam(value="id")Integer id, Store store, User user, Goods goods){
        //删除user的同时，删除有关user的店铺和商品
        goods.setUserId(id);
        user.setId(id);
        User user1=userService.selectAdress(user.getId());
        Integer j=userService.deleteUser(user.getId());
        Integer i=goodsSerive.delectByUserId(goods.getId());
        Integer m=storeService.delectStore(user1.getStoreName());
        return "redirect:/admin";
    }
    @RequestMapping("/delectgoods1")
    public void delectgoods1(@RequestParam(value="id")Integer id){
        Integer i=goodsSerive.deleteGoodsById(id);

    }
    @RequestMapping("/deletegoods2")
        public String  deletegoods2(@RequestParam(value="id")Integer id){
        Integer i=goodsSerive.deleteGoodsById(id);
        return "redirect:/admin";

        }

    @RequestMapping("deletecomment")
        public String deletecomment(@RequestParam(value="id")Integer id){
        Integer i=commentService.deleteComment(id);

        return "redirect:/admin";
    }
    }

