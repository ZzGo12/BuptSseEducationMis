package com.sse.bupt.edumis.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Nothing on 2017/5/11.
 */
public class Student implements Serializable{
    private String no;
    private String pwd;
    private String name;
    private Character sex;
    private Integer age;
    private String dept;
    private Integer credit;

    Set<Student_Course> studentCourses = new HashSet<>();

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Character getSex() {
        return sex;
    }

    public void setSex(Character sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public Set<Student_Course> getStudentCourses() {
        return studentCourses;
    }

    public void setStudentCourses(Set<Student_Course> studentCourses) {
        this.studentCourses = studentCourses;
    }
}
