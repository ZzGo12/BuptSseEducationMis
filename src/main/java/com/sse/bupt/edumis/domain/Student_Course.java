package com.sse.bupt.edumis.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by ZzGo on 2017/5/22.
 */
public class Student_Course {
    private Integer id;
    private Student student;
    private Course course;
    private Date date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
