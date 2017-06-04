package com.sse.bupt.edumis.mapper;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Teacher;

import java.util.Set;

/**
 * Created by Nothing on 2017/5/11.
 */
public interface TeacherMapper {
    void addTeacher(Teacher teacher);

    Teacher findTeacherByNoAndPwd(Teacher teacher);

    void updateTeacher(Teacher teacher);

    void addCourse(Course course);


    Set<Course> findCoursesByTno(String no);

    Course findCourseByid(int courseid);

    void updateCourse(Course course);

    void deleteCourseByid(int courseId);
}
