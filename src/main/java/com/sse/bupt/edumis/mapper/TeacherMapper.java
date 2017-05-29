package com.sse.bupt.edumis.mapper;

import com.sse.bupt.edumis.domain.Teacher;

/**
 * Created by Nothing on 2017/5/11.
 */
public interface TeacherMapper {
    void addTeacher(Teacher teacher);

    int findTeacherByNoAndPwd(Teacher teacher);
}
