package com.sse.bupt.edumis.service;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Teacher;

import java.util.Set;

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

    Set<Course> findAllCoursesByTno(String no);

    Course findCourseByid(int courseid);

    void updateCourse(Course course);

    void deleteCourseById(int courseId);
}
