package com.sse.bupt.edumis.service.impl;

import com.sse.bupt.edumis.domain.*;
import com.sse.bupt.edumis.mapper.AdminMapper;
import com.sse.bupt.edumis.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Nothing on 2017/6/3.
 */
@Service
public class AdminServiceImpl implements AdminService{
    @Autowired
    AdminMapper adminMapper;
    @Override
    public Admin findAdminByUsernameAndPwd(Admin admin) {
        return adminMapper.findAdminByUsernameAndPwd(admin);
    }

    @Override
    public List<Teacher> findAllTeachers() {
        return adminMapper.findAllTeachers();
    }

    @Override
    public void deleteTeacherByNo(String teacherNo) {
        adminMapper.deleteTeacherByNo(teacherNo);
    }

    @Override
    public List<Student> findAllStudents() {
        return adminMapper.findAllStudents();
    }

    @Override
    public void deleteStudentByNo(String studentNo) {
        adminMapper.deleteStudentByNo(studentNo);
    }

    @Override
    public void updateSwitch(Map<String, String> switchNum) {
        adminMapper.updateSwitch(switchNum);
    }

    @Override
    public List<Course> findAllCoursesUndo() {
        return adminMapper.findAllCoursesUndo();
    }

    @Override
    public List<Course> findAllCoursesDone() {
        return adminMapper.findAllCoursesDone();
    }

    @Override
    public Course findCourseByid(int courseId) {
        return adminMapper.findCourseByid(courseId);
    }

    @Override
    public List<Classroom> findAllClassrooms() {
        return adminMapper.findAllClassroom();
    }

    @Override
    public void addClassroom(Classroom classroom) {
        adminMapper.addClassroom(classroom);
    }

    @Override
    public Classroom findClassroomById(int classroomId) {
        return adminMapper.findClassroomById(classroomId);
    }

    @Override
    public void updateClassroom(Classroom classroom) {
        adminMapper.updateClassroom(classroom);
    }

    @Override
    public void deleteClassroomById(int classroomId) {
        adminMapper.deleteClassroomById(classroomId);
    }

    @Override
    public List<Classroom> findClassroomsByName(Classroom classroom) {
        return adminMapper.findClassroomsByName(classroom);
    }

    @Override
    public void updateCourse(Course course) {
        adminMapper.updateCourse(course);
    }

    @Override
    public Classroom findClassroomsByNameAndAddr(Classroom classroom) {
        return adminMapper.findClassroomsByNameAndAddr(classroom);
    }
}
