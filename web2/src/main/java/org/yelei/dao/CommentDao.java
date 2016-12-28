package org.yelei.dao;

import org.yelei.entity.Comment;

import java.util.List;

/**
 * Created by yelei on 16-12-15.
 */

public interface CommentDao {
    public Integer insertComment(Comment comment);
    public List<Comment> selectComment();
    public Comment selecId();
    public Integer deleteComment(Integer id);
}
