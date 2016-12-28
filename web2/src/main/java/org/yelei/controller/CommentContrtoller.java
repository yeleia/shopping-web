package org.yelei.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yelei.Test.ResponseUtil;
import org.yelei.entity.Comment;
import org.yelei.service.CommentService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yelei on 16-12-15.
 */
@Controller
@RequestMapping("/")
public class CommentContrtoller {
    @Resource
    private CommentService commentService;
    @RequestMapping("/comment")

    public String comment(Comment comment, HttpServletRequest request,
                          HttpServletResponse response)
            throws Exception{

        System.out.println(comment.getContent());

         Integer i=commentService.insertComment(comment);
        System.out.println(i+"ajax");
        Comment comment1=commentService.selecId();
        System.out.println(comment1.getId());
        ResponseUtil.write(response, comment1.getId());

        return null;
    }
}
