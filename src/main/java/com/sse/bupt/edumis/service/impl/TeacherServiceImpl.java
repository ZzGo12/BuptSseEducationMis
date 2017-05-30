package com.sse.bupt.edumis.service.impl;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.mapper.TeacherMapper;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Nothing on 2017/5/11.
 */
@Service
public class TeacherServiceImpl implements TeacherService{

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public void addTeacher(Teacher teacher) {
        teacherMapper.addTeacher(teacher);
    }

    @Override
    public Teacher findTeacherByNoAndPwd(Teacher teacher) {
        return teacherMapper.findTeacherByNoAndPwd(teacher);
    }

    @Override
    public void updateTeacher(Teacher teacher) {
        teacherMapper.updateTeacher(teacher);
    }

    @Override
    public void addCourse(Course course) {
        teacherMapper.addCourse(course);
    }
}
