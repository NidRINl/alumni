package com.university.alumni.entity;

import javax.persistence.*;

/**
 * Created by wm on 2017/3/15.
 */
@Entity
@Table(name="donateimg")
public class DonateImg {
    /**
     * 捐赠图片id
     */
    private Integer donateImgId;
    /**
     * 图片地址
     */
    private String donateImgUrl;
    /**
     *捐赠表id
     */
    private Integer donateId;
    /**
     * 状态
     */
    private Integer status;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="donateImgId",unique = true,nullable = false)
    public Integer getDonateImgId() {
        return donateImgId;
    }

    public void setDonateImgId(Integer donateImgId) {
        this.donateImgId = donateImgId;
    }

    @Column(name = "donateImgUrl",nullable = true)
    public String getDonateImgUrl() {
        return donateImgUrl;
    }

    public void setDonateImgUrl(String donateImgUrl) {
        this.donateImgUrl = donateImgUrl;
    }

    @Column(name = "donateId",nullable = true)
    public Integer getDonateId() {
        return donateId;
    }

    public void setDonateId(Integer donateId) {
        this.donateId = donateId;
    }

    @Column(name = "status",nullable = true)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
