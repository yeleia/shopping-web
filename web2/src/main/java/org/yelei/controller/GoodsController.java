package org.yelei.controller;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.yelei.Test.DateUtil;
import org.yelei.entity.Goods;
import org.yelei.entity.Store;
import org.yelei.entity.User;
import org.yelei.lucene.GoodsIndex;
import org.yelei.service.GoodsSerive;
import org.yelei.service.StoreService;
import org.yelei.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.List;

/**
 * Created by yelei on 16-12-10.
 */
@Controller
@RequestMapping("/")
public class GoodsController {
    @Resource
    private GoodsSerive goodsSerive;
    @Resource
    private UserService userService;
    @Resource
    private StoreService storeService;
    GoodsIndex goodsIndex=new GoodsIndex();

    @RequestMapping("/insertGoods")
    public String insertGoods(@RequestParam("imageFiles") MultipartFile imageFiles, Goods goods, Store store,HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        System.out.println(goods.getDescrib());
        if (!imageFiles.isEmpty()){
            String filePath = request.getSession().getServletContext().getRealPath("/static/upload/");
            String imageName = DateUtil.getCurrentDateStr()+".jpg";
            imageFiles.transferTo(new File(filePath + imageName));
            goods.setGoodsImage(imageName);

        }
        User user=(User)SecurityUtils.getSubject().getSession().getAttribute("currentUser");
        String storeName=user.getStoreName();
        System.out.println("hhhhhhhhh"+storeName);
        store.setStoreName(storeName);
        System.out.println(store.getStoreName());
        Store store1=storeService.selectByStoreName(store.getStoreName());
        if (store1!=null){
            System.out.println("找到了哦");
        }
        goods.setStoreId(store1.getId());
        goods.setUserId(user.getId());
        goodsIndex.addIndex(goods);
        Integer i = goodsSerive.insertGoods(goods);

        return "redirect:/test.jsp";
    }
    @RequestMapping("/deleteGoods")
    public String selectGoods(@RequestParam(value="id")Integer id,Goods goods,HttpServletRequest request,
                              HttpServletResponse response)throws Exception{

        goods.setId(id);
        Integer i=goodsSerive.deleteGoodsById(goods.getId());

        return "redirect:/test1.jsp";
    }
    @RequestMapping("/updateGoods")
    public String updateGoods(@RequestParam(value="id")Integer id,@RequestParam("imageFiles2") MultipartFile imageFiles2,Goods goods,HttpServletRequest request,
                              HttpServletResponse response)throws Exception{
        if (!imageFiles2.isEmpty()){
            String filePath = request.getSession().getServletContext().getRealPath("/static/upload/");
            String imageName = DateUtil.getCurrentDateStr()+".jpg";
            imageFiles2.transferTo(new File(filePath + imageName));
            goods.setGoodsImage(imageName);
        }else{

            Goods goods1=goodsSerive.selectByGoodsId(id);
            goods.setGoodsImage(goods1.getGoodsImage());
        }
        goods.setId(id);
        System.out.println(goods.getId());
        System.out.println(goods.getGoodsName());
        System.out.println(goods.getGoodsImage());
        Integer i=goodsSerive.updateGoods(goods);
        return "redirect:/test1.jsp";
    }
    @RequestMapping("/goodsList")
    public ModelAndView goodsList(Goods goods,Store store,HttpServletResponse response,HttpServletRequest request)
    throws Exception{
        ModelAndView modelAndView=new ModelAndView();
        //卖家表里面有storename字段，可以根据卖家的登录信息去查找店铺的名字，然后根据店铺的id,商品表有店铺的id,
        //就可以根据商品中店铺的id去查找商品。
        User user=(User) SecurityUtils.getSubject().getSession().getAttribute("currentUser");
        System.out.println(user.getStoreName());
        store.setStoreName(user.getStoreName());
        Store store1=storeService.selectByStoreName(store.getStoreName());
        goods.setStoreId(store1.getId());
        Integer id=goods.getStoreId();
       List<Goods> goods1=goodsSerive.slectByStoreId(id);
        if(goods1!=null){
            System.out.println("可以查询");
        }
        modelAndView.addObject("goods",goods1);
        modelAndView.setViewName("gl");
        return modelAndView;
    }



}