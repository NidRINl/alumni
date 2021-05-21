package com.university.alumni.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * Created by wm on 2017/3/15.
 * 刊物
 */
public class Publication {

    /**
     * 刊物id
     */
    private Integer publicationId;
    /**
     * 标题
     */
    private String title;
    /**
     * 内容
     */
    private String content;
    /**
     * 来源
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
     * 补充
     */
    private String note;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="publicationId",unique = true,nullable = false)
    public Integer getPublicationId() {
        return publicationId;
    }

    public void setPublicationId(Integer publicationId) {
        this.publicationId = publicationId;
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
