package com.university.alumni.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wm on 2017/1/18.
 * 用户表
 */
@Entity
@Table(name="newsimg")
public class NewsImg {
    /**
     * 新闻ID
     */
    private Integer newsImgId;
    /**
     * 新闻图片地址
     */
    private String newsImgUrl;
    /**
     * 新闻id
     */
    private Integer newsId;
    /**
     * 图片状态
     */
    private Integer status;

    /**
     * 图片补充内容
     */
    private String note;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="newsImgId",unique = true,nullable = false)
    public Integer getNewsImgId() {
        return newsImgId;
    }

    public void setNewsImgId(Integer newsImgId) {
        this.newsImgId = newsImgId;
    }

    @Column(name = "newsImgUrl",nullable = true)
    public String getNewsImgUrl() {
        return newsImgUrl;
    }

    public void setNewsImgUrl(String newsImgUrl) {
        this.newsImgUrl = newsImgUrl;
    }

    @Column(name = "newsId",nullable = true)
    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
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
