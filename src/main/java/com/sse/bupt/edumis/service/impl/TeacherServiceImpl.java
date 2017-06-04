package com.sse.bupt.edumis.service.impl;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.mapper.TeacherMapper;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

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

    @Override
    public Set<Course> findAllCoursesByTno(String no) {
        Set<Course> courses = teacherMapper.findCoursesByTno(no);
        return courses;
    }

    @Override
    public Course findCourseByid(int courseid) {
        return teacherMapper.findCourseByid(courseid);
    }

    @Override
    public void updateCourse(Course course) {
        teacherMapper.updateCourse(course);
    }

    @Override
    public void deleteCourseById(int courseId) {
        teacherMapper.deleteCourseByid(courseId);
    }
}
