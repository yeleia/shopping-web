package org.yelei.service.impl;

import org.springframework.stereotype.Service;
import org.yelei.dao.CommentDao;
import org.yelei.entity.Comment;
import org.yelei.service.CommentService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by yelei on 16-12-15.
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Resource
    private CommentDao commentDao;
    public Integer insertComment(Comment comment){
        return commentDao.insertComment(comment);
    }
    public List<Comment> selectComment(){
        return commentDao.selectComment();
    }
    public Comment selecId(){
        return commentDao.selecId();
    }
    public Integer deleteComment(Integer id){
        return commentDao.deleteComment(id);
    }
}
