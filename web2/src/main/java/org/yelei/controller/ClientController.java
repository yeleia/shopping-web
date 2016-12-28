package org.yelei.controller;

import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.yelei.Test.DateUtil;
import org.yelei.Test.ResponseUtil;
import org.yelei.entity.Client;
import org.yelei.service.ClientService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;

/**
 * Created by yelei on 16-12-11.
 */
@Controller
@RequestMapping("/")
public class ClientController {
    @Resource
    private ClientService clientService;
    @RequestMapping(value="/Cimage",method = RequestMethod.POST)
    public String save(@RequestParam("imageFile") MultipartFile imageFile, Client client, HttpServletRequest request, HttpServletResponse response)throws Exception{

        if (!imageFile.isEmpty()){
            String filePath=request.getSession().getServletContext().getRealPath("/static/upload/");
            String imageName= DateUtil.getCurrentDateStr()+"."+imageFile.getOriginalFilename().split("\\.");
            imageFile.transferTo(new File(filePath+imageName));
            client.setCimage(imageName);
            Integer i=clientService.Cimage(client);
            System.out.println(i);
        }
        return "redirect:/user.jsp";
    }
    @RequestMapping("/Cupdate")
    public String updateuser(Client client, HttpServletRequest request)
            throws Exception{
        System.out.println(client.getCadress());
        Integer i=clientService.updateClient(client);
        return "redirect:/user.jsp";
    }

    @RequestMapping("/Clogin")
    public String login(Client client, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Client client1=clientService.getByname(client.getCname());
      /*  System.out.println(client1.getId());
        System.out.println(client.getCpassword());
        System.out.println(client1.getCpassword());*/
        if (client1!=null){
            if(client.getCpassword()!=client1.getCpassword()){
                System.out.println(client1.getId());
                request.getSession().setAttribute("clientId",client1.getId());
                return "redirect:/test3.jsp";
            }else{
                System.out.println("请输入正确的密码");
                return "redirect:/signin.jsp";
            }
        }else{
            return "redirect:/signin.jsp";
        }

    }
    @RequestMapping("/Cyan")
    public String message(Client client, HttpServletRequest request,HttpServletResponse response)
            throws Exception {
        String url = "http://gw.api.taobao.com/router/rest";
        String appkey = "23556636";
        String secret = "1ebffda722edf63150a56743743370dd";
      /*  System.out.println(user.getUserName());*/
        int state=2;

        if (client!= null){
            String name1 = client.getCname();
            Client client1 = clientService.getByname(client.getCname());
            Client client2=clientService.getByCPhone(client.getCphone());
            String phone=client.getCphone();
            if (client1!=null){
                System.out.println("已存在该用户名,请重新输入");
                state=0;
            }else if (client2!=null){
                System.out.println("该号码已经注册");
                state=1;
            } else{
                TaobaoClient client3= new DefaultTaobaoClient(url, appkey, secret);
                AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
                req.setExtend("123456");
                req.setSmsType("normal");
                req.setSmsFreeSignName("宅宝网");
                int a = getRandNum(1, 9999);
                req.setSmsParamString("{\"code\":\"" + a + "\",\"product\":\"宅宝网\"}");
                req.setRecNum(phone);
                req.setSmsTemplateCode("SMS_33315202");
                AlibabaAliqinFcSmsNumSendResponse rsp = client3.execute(req);
                System.out.println(rsp.getBody());
                client.setCtest(String.valueOf(a));
                System.out.println(client.getCtest());

                Integer i = clientService.Ctest(client);
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
        }
        return null;
    }


    @RequestMapping("/Cregister")
    public String register(Client client, HttpServletResponse response)throws Exception{
        int state = 0;
        String test2 = client.getCname();
        String test3 = client.getCtest();
        System.out.println("aaaaaaa" + test3);
        System.out.println(test2);
        client.setCimage("20161218112000.jpg");
        Client client1 = clientService.getByCtest(client.getCtest());
        if (client1 == null){
           return "redirect:/signup.jsp";
        }

        /*JSONObject result = new JSONObject();
        if (state == 1){
            result.put("success", true);
            ResponseUtil.write(response, result);
        }*/else{
            System.out.println("成功啦啦");
            client.setCimage("111.jpg");
            Integer i = clientService.Cregister(client);
            return "redirect:/signin.jsp";
           /* result.put("success", false);
            ResponseUtil.write(response, result);*/
        }

    }
    @RequestMapping("/change")
    public String change(@RequestParam("imageFilea") MultipartFile imageFilea,Client client,HttpServletRequest request)throws Exception{
        if (!imageFilea.isEmpty()){
            String filePath=request.getSession().getServletContext().getRealPath("/static/upload/");
            String Cimage= DateUtil.getCurrentDateStr()+".jpg";
            imageFilea.transferTo(new File(filePath+Cimage));
            client.setCimage(Cimage);
            Integer i=clientService.updateAll(client);
            System.out.println(i+"hhhhhhhhhhhhhhhhhhh");
            return "redirect:/test4.jsp";
        }else {
            Integer i=clientService.updateClient(client);
            return "redirect:/test4.jsp";
        }

    }



    public static int getRandNum(int min, int max){
        int randNum = min + (int)(Math.random() * ((max - min) + 1));

        return randNum;
    }
}




