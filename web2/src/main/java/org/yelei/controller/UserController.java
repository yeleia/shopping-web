package org.yelei.controller;

import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.yelei.Test.DateUtil;
import org.yelei.Test.ResponseUtil;
import org.yelei.entity.Store;
import org.yelei.entity.User;
import org.yelei.service.StoreService;
import org.yelei.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;


/**
 * Created by liao on 16-10-12.
 * 个人主页相关功能
 */

@Controller
@RequestMapping("/")
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private StoreService storeService;
    @RequestMapping(value="/image",method = RequestMethod.POST)
    public String save(@RequestParam("imageFile") MultipartFile imageFile,User user,HttpServletRequest request,HttpServletResponse response)throws Exception{
        User user1=(User)SecurityUtils.getSubject().getSession().getAttribute("currentUser");

        if (!imageFile.isEmpty()){
            String fileName = imageFile.getOriginalFilename();// 文件原名称
            System.out.println(fileName + "原图片名");
            String type = fileName.indexOf(".") != -1 ? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
            System.out.println(type + "后缀名");
            if (type != null){// 判断文件类型是否为空
                if ("PNG".equals(type.toUpperCase()) || "JPG".equals(type.toUpperCase())) {
                    String filePath = request.getSession().getServletContext().getRealPath("/static/upload/");
                    String imageName = DateUtil.getCurrentDateStr() + type;
                    imageFile.transferTo(new File(filePath + imageName));
                    System.out.println(filePath);
                    user1.setUserImage(imageName);
                    user.setUserImage(imageName);
           /* System.out.println(user.getUserImage());
            System.out.println(user1.getUserImage());*/
                    user.setUserName(user1.getUserName());
                    System.out.println(user.getUserName());
                    Integer i = userService.image(user);
                    System.out.println(i);
                    return "redirect:/test.jsp";
                } else{
                    System.out.println("不符合上传图片的格式");
                    return "redirect:/test.jsp";
                }

            }else {
                System.out.println("请传入正确的文件格式");
                return "redirect:/test.jsp";
            }


        }else {
            return "redirect:/test.jsp";
        }

}
    @RequestMapping("/update")
    public String updateuser(User user, HttpServletRequest request)
        throws Exception{
        System.out.println(user.getAdress());
        Integer i=userService.updateUser(user);
        return "redirect:/test.jsp";
    }
    @RequestMapping("/user")
    public ModelAndView show(HttpServletResponse response,
                             HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        User user=(User)SecurityUtils.getSubject().getSession().getAttribute("currentUser");
        User user1=userService.getByUserName(user.getUserName());
        modelAndView.addObject("user",user1);
        modelAndView.setViewName("user");
        return modelAndView;
    }
    @RequestMapping("/login")

    public String login(User user, HttpServletRequest request)
            {
        User user1=userService.getByUserName(user.getUserName());
                if(user1!=null) {
                    System.out.println(user1.getId());
                    Subject subject = SecurityUtils.getSubject();
                    UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(),
                            user.getPassword());
                    try {
                        subject.login(token);
                        return "redirect:/test.jsp";
                    } catch (Exception e) {
                        e.printStackTrace();

                        return "login";
                    }
                }else{
                    return "login";
                }
    }
    @RequestMapping("/yan")
    public String message(User user, HttpServletRequest request,HttpServletResponse response)
            throws Exception {
        String url = "http://gw.api.taobao.com/router/rest";
        String appkey = "23556636";
        String secret = "1ebffda722edf63150a56743743370dd";
      /*  System.out.println(user.getUserName());*/
        int state=2;

        if (user!= null){
            String name1 = user.getUserName();
            User user1 = userService.getByUserName(user.getUserName());
            User user2=userService.getByPhone(user.getPhone());
            User user3=userService.getByStoreName(user.getStoreName());
            String phone=user.getPhone();
            if (user1!=null){
                System.out.println("已存在该用户名,请重新输入");
                state=0;
            }else if (user2!=null){
                System.out.println("该号码已经注册");
                state=1;
            } else if(user3!=null){
                System.out.println("该店铺名已被用，请重新输入");
                state=3;

            }
            else{
                TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
                AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
                req.setExtend("123456");
                req.setSmsType("normal");
                req.setSmsFreeSignName("宅宝网");
                int a = getRandNum(1, 9999);
                req.setSmsParamString("{\"code\":\"" + a + "\",\"product\":\"宅宝网\"}");
                req.setRecNum(phone);
                req.setSmsTemplateCode("SMS_33315202");
                AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
                System.out.println(rsp.getBody());
                user.setTest(String.valueOf(a));
                System.out.println(user.getTest());

                Integer i = userService.test(user);
                return rsp.getBody();
            }
        }
        JSONObject result=new JSONObject();
        if(state==0){
            result.put("success", true);
            ResponseUtil.write(response, result);
            System.out.println("sucesss");
        }else if(state==1){
            result.put("success", false);
            ResponseUtil.write(response, result);
        }else if(state==3){
            result.put("success",true);
            ResponseUtil.write(response, result);
        }
        return null;
    }


    @RequestMapping("/register")
    public String register(User user, Store store,HttpServletRequest request, HttpServletResponse
            response)throws Exception{
        String test2 = user.getUserName();
      /*  String test3=user.getTest();*/
        System.out.println(test2);
        User user1 = userService.getByTest(user.getTest());
    /*    System.out.println(user1.getTest());*/
        if (user1==null){
            System.out.println("请输入正确的验证码");
          /*  JSONObject result=new JSONObject();
            result.put("success", true);
            ResponseUtil.write(response, result);*/
            return "redirect:/register.jsp";
            }else{
                user.setUserImage("111.jpg");
                Integer i=userService.register(user);
                User user2=userService.getByUserName(user.getUserName());
                System.out.println("HHHHHHH"+user2.getStoreName());
                store.setStoreName(user2.getStoreName());
                Integer j=storeService.addStore(store);
                System.out.println(j+"成功啦");
           /* StringBuffer result=new StringBuffer();
            response.setContentType("text/html;charset=utf-8");

            result.append("<script language='javascript'>alert('注册成功！');</script>");
            ResponseUtil.write(response, result);*/
                return "redirect:/login.jsp";
            }
        }


    public static int getRandNum(int min, int max){
        int randNum = min + (int)(Math.random() * ((max - min) + 1));

        return randNum;
    }
}

