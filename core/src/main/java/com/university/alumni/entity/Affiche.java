package com.university.alumni.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wm on 2017/1/18.
 * 公告
 */
@Entity
@Table(name="affiche")
public class Affiche {
    /**
     * 公告ID
     */
    private Integer afficheId;
    /**
     * 公告标题
     */
    private String title;
    /**
     * 公告内容
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
    @Column(name="afficheId",unique = true,nullable = false)
    public Integer getAfficheId() {
        return afficheId;
    }

    public void setAfficheId(Integer afficheId) {
        this.afficheId = afficheId;
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
