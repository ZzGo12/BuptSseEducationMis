package com.sse.bupt.edumis.mapper;

import com.sse.bupt.edumis.domain.Student;

/**
 * Created by Nothing on 2017/6/4.
 */
public interface StudentMapper {
    Student findStudentByNoAndPwd(Student student);

    void addStudent(Student student);
}
