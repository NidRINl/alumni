package com.university.alumni.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wm on 2017/1/18.
 * 用户表
 */
@Entity
@Table(name="news")
public class News {
    /**
     * 新闻ID
     */
    private Integer newsId;
    /**
     * 新闻标题
     */
    private String title;
    /**
     * 新闻内容
     */
    private String content;
    /**
     * 新闻来源
     */
    private String source;
    /**
     * 创建日期
     */
    private Date createDate;
    /**
     * 创建人
     */
    private Integer createUserId;
    /**
     * 状态
     */
    private Integer status;
    /**
     * 补充内容
     */
    private String note;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="newsId",unique = true,nullable = false)
    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    @Column(name = "title",nullable = true)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "content",nullable = true)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Column(name = "source",nullable = true)
    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    @Column(name = "createDate",nullable = true)
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Column(name = "createUserId",nullable = true)
    public Integer getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(Integer createUserId) {
        this.createUserId = createUserId;
    }

    @Column(name = "status",nullable = true)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Column(name = "note",nullable = true)
    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
