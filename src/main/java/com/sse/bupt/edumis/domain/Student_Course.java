package com.sse.bupt.edumis.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by ZzGo on 2017/5/22.
 */
public class Student_Course {
    private Integer id;
    private String sno;
    private Set<Student_Course_Detail> studentCourseDetails = new HashSet<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public Set<Student_Course_Detail> getStudentCourseDetails() {
        return studentCourseDetails;
    }

    public void setStudentCourseDetails(Set<Student_Course_Detail> studentCourseDetails) {
        this.studentCourseDetails = studentCourseDetails;
    }
}
