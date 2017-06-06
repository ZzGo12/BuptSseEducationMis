package com.sse.bupt.edumis.service;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Student_Course;

import java.util.Date;
import java.util.List;

/**
 * Created by Nothing on 2017/6/4.
 */
public interface StudentService {
    Student findStudentByNoAndPwd(Student student);

    void addStudent(Student student);

    void updateStudent(Student student);

    String getSysStatus();

    List<Course> findAvailableCourses(Student student);

    int findstudentCourseCount(Integer id);

    void addStudentCourse(Student_Course student_course);

    List<Course> findCoursesList(Student student);

    void deleteStudentCourse(Student_Course student_course);
}
