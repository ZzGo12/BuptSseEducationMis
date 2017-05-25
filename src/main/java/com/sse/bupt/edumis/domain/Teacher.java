package com.sse.bupt.edumis.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by ZzGo on 2017/5/22.
 */
public class Teacher implements Serializable {
    private String no;
    private String pwd;
    private String name;
    private Character sex;
    private Integer age;
    private String dept;

    Set<Course> courses = new HashSet<>();

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

    public Set<Course> getCourses() {
        return courses;
    }

    public void setCourses(Set<Course> courses) {
        this.courses = courses;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "no='" + no + '\'' +
                ", pwd='" + pwd + '\'' +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", age=" + age +
                ", dept='" + dept + '\'' +
                ", courses=" + courses +
                '}';
    }
}
