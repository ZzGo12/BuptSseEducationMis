package com.sse.bupt.edumis.service;

import com.sse.bupt.edumis.domain.*;

import java.util.List;
import java.util.Map;

/**
 * Created by Nothing on 2017/6/3.
 */
public interface AdminService {
    Admin findAdminByUsernameAndPwd(Admin admin);

    List<Teacher> findAllTeachers();

    void deleteTeacherByNo(String teacherNo);

    List<Student> findAllStudents();

    void deleteStudentByNo(String studentNo);

    void updateSwitch(Map<String, String> switchNum);

    List<Course> findAllCoursesUndo();

    List<Course> findAllCoursesDone();

    Course findCourseByid(int courseId);

    List<Classroom> findAllClassrooms();

    void addClassroom(Classroom classroom);

    Classroom findClassroomById(int classroomId);

    void updateClassroom(Classroom classroom);

    void deleteClassroomById(int classroomId);

    List<Classroom> findClassroomsByName(Classroom classroom);

    void updateCourse(Course course);

    Classroom findClassroomsByNameAndAddr(Classroom classroom);
}
