package com.university.alumni.entity;

import javax.persistence.*;

/**
 * Created by wm on 2017/1/18.
 * 人物风采图片表
 */
@Entity
@Table(name="showimg")
public class ShowImg {
    /**
     * ID
     */
    private Integer showImgId;
    /**
     * 图片地址
     */
    private String showImgurl;
    /**
     * 人物风采表id
     */
    private Integer showId;
    /**
     * 状态
     */
    private Integer status;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="showImgId",unique = true,nullable = false)
    public Integer getShowImgId() {
        return showImgId;
    }

    public void setShowImgId(Integer showImgId) {
        this.showImgId = showImgId;
    }

    @Column(name = "showImgurl",nullable = true)
    public String getShowImgurl() {
        return showImgurl;
    }

    public void setShowImgurl(String showImgurl) {
        this.showImgurl = showImgurl;
    }

    @Column(name = "showId",nullable = true)
    public Integer getShowId() {
        return showId;
    }

    public void setShowId(Integer showId) {
        this.showId = showId;
    }

    @Column(name = "status",nullable = true)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
