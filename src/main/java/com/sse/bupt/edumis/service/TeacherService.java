package com.sse.bupt.edumis.service;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Teacher;

/**
 * Created by Nothing on 2017/5/11.
 */
public interface TeacherService {
    /**
     * 添加教师
     * @param teacher
     */
    void addTeacher(Teacher teacher);

    /**
     * 教师登录
     * @param teacher
     * @return
     */
    Teacher findTeacherByNoAndPwd(Teacher teacher);

    void updateTeacher(Teacher teacher);

    void addCourse(Course course);
}
