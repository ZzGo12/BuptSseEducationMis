package com.sse.bupt.edumis.service.impl;

import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.mapper.StudentMapper;
import com.sse.bupt.edumis.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Nothing on 2017/6/4.
 */
@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    StudentMapper studentMapper;
    @Override
    public Student findStudentByNoAndPwd(Student student) {
        return studentMapper.findStudentByNoAndPwd(student);
    }

    @Override
    public void addStudent(Student student) {
        studentMapper.addStudent(student);
    }
}
