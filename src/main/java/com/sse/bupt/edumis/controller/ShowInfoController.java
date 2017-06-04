package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Classroom;
import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.service.AdminService;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by Nothing on 2017/5/30.
 */
@Controller
@RequestMapping("/info")
public class ShowInfoController {
    @Autowired
    TeacherService teacherService;
    @Autowired
    AdminService adminService;
    @RequestMapping("/teacher")
    public String showTeacherInfo() {
        return "teacher/userInfo";
    }

    @RequestMapping("/courses")
    public String showCoursesInfo(HttpSession httpSession, Model model) {
        Teacher teacher = (Teacher) httpSession.getAttribute("teacher");
        Set<Course> courses = teacherService.findAllCoursesByTno(teacher.getNo());
        model.addAttribute("courses",courses);
        return "teacher/courseList";
    }

    @RequestMapping("/courseDetail/{courseid}")
    public String showCourseDetail(@PathVariable int courseid,Model model) {
        Course course = teacherService.findCourseByid(courseid);
        model.addAttribute("course",course);
        return "pages/courseDetail";
    }

    @RequestMapping("/teachers")
    public String showTeachersInfo(Model model) {
        List<Teacher> teachers = adminService.findAllTeachers();
        model.addAttribute("teachers",teachers);
        return "WEB-INF/admin/teacherList";
    }

    @RequestMapping("/students")
    public String showStudentsInfo(Model model) {
        List<Student> students = adminService.findAllStudents();
        model.addAttribute("students",students);
        return "WEB-INF/admin/studentList";
    }

    @RequestMapping("/coursesUndo")
    public String showCoursesUndoInfo(Model model) {
        List<Course> courses = adminService.findAllCoursesUndo();
        model.addAttribute("courses",courses);
        model.addAttribute("done","0");
        return "WEB-INF/admin/courseList";
    }

    @RequestMapping("/coursesDone")
    public String showCoursesDoneInfo(Model model) {
        List<Course> courses = adminService.findAllCoursesDone();
        model.addAttribute("courses",courses);
        model.addAttribute("done","1");
        return "WEB-INF/admin/courseList";
    }

    @RequestMapping("/classroom")
    public String showClassroomInfo(Model model) {
        List<Classroom> classrooms = adminService.findAllClassrooms();
        model.addAttribute("classrooms",classrooms);
        return "WEB-INF/admin/classroomList";
    }

    @RequestMapping("/classroomAddress")
    public @ResponseBody List<String> getClassroomAddress(@RequestBody Classroom classroom) {
        List<Classroom> classrooms = adminService.findClassroomsByName(classroom);
        List<String> list = new ArrayList<>();
        for (Classroom room: classrooms
             ) {
            list.add(room.getAddress());
        }
        return list;
    }
}
