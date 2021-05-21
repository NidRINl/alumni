package com.university.alumni.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wm on 2017/1/18.
 * 校友网简介表
 */
@Entity
@Table(name="alumniinfo")
public class AlumniInfo {
    /**
     * 校友网简介ID
     */
    private Integer alumniInfoId;
    /**
     * 校友网简介标题
     */
    private String title;
    /**
     * 子标题
     */
    private String subtitle;
    /**
     * 内容
     */
    private String content;

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

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="alumniInfoId",unique = true,nullable = false)
    public Integer getAlumniInfoId() {
        return alumniInfoId;
    }

    public void setAlumniInfoId(Integer alumniInfoId) {
        this.alumniInfoId = alumniInfoId;
    }

    @Column(name = "title",nullable = true)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "subtitle",nullable = true)
    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    @Column(name = "content",nullable = true)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
}
