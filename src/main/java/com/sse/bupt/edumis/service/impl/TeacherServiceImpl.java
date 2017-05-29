package com.sse.bupt.edumis.service.impl;

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
    public int findTeacherByNoAndPwd(Teacher teacher) {
        return teacherMapper.findTeacherByNoAndPwd(teacher);
    }
}
