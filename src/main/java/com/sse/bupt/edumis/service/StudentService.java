package com.sse.bupt.edumis.service;

import com.sse.bupt.edumis.domain.Student;

/**
 * Created by Nothing on 2017/6/4.
 */
public interface StudentService {
    Student findStudentByNoAndPwd(Student student);

    void addStudent(Student student);
}
