package com.university.alumni.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wm on 2017/1/18.
 * 捐赠表
 */
@Entity
@Table(name="news")
public class Donate {
    /**
     * 捐赠ID
     */
    private Integer donateId;
    /**
     * 捐赠人
     */
    private String donateUserId;
    /**
     * 捐赠项目
     */
    private String donateItem;
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
    /**
     * 补充内容
     */
    private String note;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="donateId",unique = true,nullable = false)
    public Integer getDonateId() {
        return donateId;
    }

    public void setDonateId(Integer donateId) {
        this.donateId = donateId;
    }

    @Column(name = "donateUserId",nullable = true)
    public String getDonateUserId() {
        return donateUserId;
    }

    public void setDonateUserId(String donateUserId) {
        this.donateUserId = donateUserId;
    }

    @Column(name = "donateItem",nullable = true)
    public String getDonateItem() {
        return donateItem;
    }

    public void setDonateItem(String donateItem) {
        this.donateItem = donateItem;
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

    @Column(name = "note",nullable = true)
    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
