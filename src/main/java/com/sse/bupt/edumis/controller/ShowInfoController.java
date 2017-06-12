package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Classroom;
import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.service.AdminService;
import com.sse.bupt.edumis.service.StudentService;
import com.sse.bupt.edumis.service.TeacherService;
import com.sse.bupt.edumis.utils.CourseUtil;
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
    private TeacherService teacherService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private StudentService studentService;

    @RequestMapping("/teacher")
    public String showTeacherInfo() {
        return "teacher/userInfo";
    }

    @RequestMapping("/student")
    public String showStudentInfo() {
        return "students/userInfo";
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
        return "admin/teacherList";
    }

    @RequestMapping("/students")
    public String showStudentsInfo(Model model) {
        List<Student> students = adminService.findAllStudents();
        model.addAttribute("students",students);
        return "admin/studentList";
    }

    @RequestMapping("/coursesUndo")
    public String showCoursesUndoInfo(Model model) {
        List<Course> courses = adminService.findAllCoursesUndo();
        model.addAttribute("courses",courses);
        model.addAttribute("done","0");
        return "admin/courseList";
    }

    @RequestMapping("/coursesDone")
    public String showCoursesDoneInfo(Model model) {
        List<Course> courses = adminService.findAllCoursesDone();
        model.addAttribute("courses",courses);
        model.addAttribute("done","1");
        return "admin/courseList";
    }

    @RequestMapping("/classroom")
    public String showClassroomInfo(Model model) {
        List<Classroom> classrooms = adminService.findAllClassrooms();
        model.addAttribute("classrooms",classrooms);
        return "admin/classroomList";
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

    @RequestMapping("/showAvailableCourses")
    public String showAvailableCourses(Model model,HttpSession httpSession) {
        Student student = (Student) httpSession.getAttribute("student");
        String controlMIS = studentService.getSysStatus();
        if(controlMIS.equals("1")) {
            List<Integer> studentCourseCount = new ArrayList<>();
            List<Course> courses = studentService.findAvailableCourses(student);
            List<Course> coursesList = studentService.findCoursesList(student);
            CourseUtil.filterCourse(courses,coursesList);
            for(Course course: courses) {
                studentCourseCount.add(studentService.findstudentCourseCount(course.getId()));
            }
            model.addAttribute("studentCourseCount",studentCourseCount);
            model.addAttribute("courses",courses);
        }
        return "students/availableCourses";
    }

    @RequestMapping("/showCoursesList")
    public String showCoursesList(HttpSession httpSession,Model model) {
        Student student = (Student) httpSession.getAttribute("student");
        List<Course> courses = studentService.findCoursesList(student);
        model.addAttribute("courses",courses);
        return "students/coursesList";
    }
}
