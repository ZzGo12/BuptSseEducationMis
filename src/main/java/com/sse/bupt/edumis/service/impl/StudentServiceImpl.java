package com.sse.bupt.edumis.service.impl;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Student_Course;
import com.sse.bupt.edumis.mapper.StudentMapper;
import com.sse.bupt.edumis.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

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

    @Override
    public void updateStudent(Student student) {
        studentMapper.updateStudent(student);
    }

    @Override
    public String getSysStatus() {
        return studentMapper.findSysStatus();
    }

    @Override
    public List<Course> findAvailableCourses(Student student) {
        return studentMapper.findAvailableCourses(student);
    }

    @Override
    public int findstudentCourseCount(Integer id) {
        return studentMapper.findstudentCourseCount(id);
    }

    @Override
    public void addStudentCourse(Student_Course student_course) {
        studentMapper.addStudentCourse(student_course);
    }

    @Override
    public List<Course> findCoursesList(Student student) {
        return studentMapper.findCoursesList(student);
    }

    @Override
    public void deleteStudentCourse(Student_Course student_course) {
        studentMapper.deleteStudentCourse(student_course);
    }
}
