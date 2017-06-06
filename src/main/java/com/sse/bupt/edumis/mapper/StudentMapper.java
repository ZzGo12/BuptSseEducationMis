package com.sse.bupt.edumis.mapper;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Student_Course;

import java.util.Date;
import java.util.List;

/**
 * Created by Nothing on 2017/6/4.
 */
public interface StudentMapper {
    Student findStudentByNoAndPwd(Student student);

    void addStudent(Student student);

    void updateStudent(Student student);

    String findSysStatus();

    List<Course> findAvailableCourses(Student student);

    int findstudentCourseCount(Integer id);

    void addStudentCourse(Student_Course student_course);

    List<Course> findCoursesList(Student student);

    void deleteStudentCourse(Student_Course student_course);
}
