package com.university.alumni.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wm on 2017/1/18.
 * 校园风采表
 */
@Entity
@Table(name="show")
public class Show {
    /**
     * id
     */
    private Integer showId;
    /**
     * 标题
     */
    private String title;
    /**
     * 来源
     */
    private String source;
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
    @Column(name="showId",unique = true,nullable = false)
    public Integer getShowId() {
        return showId;
    }

    public void setShowId(Integer showId) {
        this.showId = showId;
    }

    @Column(name = "title",nullable = true)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "source",nullable = true)
    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
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
