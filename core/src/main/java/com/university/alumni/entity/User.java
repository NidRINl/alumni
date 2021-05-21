package com.university.alumni.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wm on 2017/1/18.
 * 用户表
 */
@Entity
@Table(name="user")
public class User {
    /**
     * 用户ID
     */
    private Integer userId;
    /**
     * 用户姓名
     */
    private String name;
    /**
     * 性别
     */
    private Integer sex;
    /**
     * 院系
     */
    private String department;
    /**
     * 年龄
     */
    private Integer age;
    /**
     * 班级
     */
    private String classes;
    /**
     * 学号
     */
    private String studentId;
    /**
     * qq
     */
    private String qq;
    /**
     * email
     */
    private String email;
    /**
     * 号码
     */
    private String tel;
    /**
     * 角色
     */
    private Integer role;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 状态
     */
    private Integer status;
    /**
     * 说明
     */
    private String note;

    /**
     * 密码
     */
    private String password;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="userId",unique = true,nullable = false)
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Column(name = "sex",nullable = true)
    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    @Column(name = "department",nullable = true)
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    @Column(name = "classes",nullable = true)
    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    @Column(name = "studentId",nullable = true)
    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    @Column(name = "qq",nullable = true)
    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    @Column(name = "email",nullable = true)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "tel",nullable = true)
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Column(name = "role",nullable = true)
    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    @Column(name = "createDate",nullable = true)
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
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

    @Column(name = "name",nullable = true)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "age",nullable = true)
    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Column(name = "password",nullable = true)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
