package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.*;
import com.sse.bupt.edumis.service.AdminService;
import com.sse.bupt.edumis.service.StudentService;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.*;

/**
 * Created by Nothing on 2017/5/30.
 */
@Controller
@RequestMapping("/edit")
public class EditController {
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private StudentService studentService;

    @RequestMapping("/teacher")
    public String showEditTeacher() {
        return "teacher/modifyUserInfo";
    }

    @RequestMapping("/student")
    public String showEditStudent() {
        return "students/modifyUserInfo";
    }

    @RequestMapping("/teacher/course/{courseId}")
    public String showEditCourse(@PathVariable int courseId,Model model) {
        Course course = teacherService.findCourseByid(courseId);
        model.addAttribute("course",course);
        return "teacher/modifyCourseInfo";
    }

    @RequestMapping("/teacherUpdate")
    public String updateTeacher(Teacher teacher, HttpSession httpSession) {
        // TODO 检验数据~
        teacherService.updateTeacher(teacher);
        httpSession.setAttribute("teacher",teacher);
        return "redirect:/info/teacher";
    }

    @RequestMapping("/studentUpdate")
    public String updateStudent(Student student, HttpSession httpSession) {
        // TODO 检验数据~
        studentService.updateStudent(student);
        httpSession.setAttribute("student",student);
        return "redirect:/info/student";
    }

    @RequestMapping("/teacher/courseUpdate")
    public String updateCourse(Course course) {
        teacherService.updateCourse(course);
        return "redirect:/info/courses";
    }

    @RequestMapping("/switch")
    public String switchMisControl() {
        return "WEB-INF/admin/switch";
    }

    @RequestMapping("/switchStatus/{switchNum}/{nowTerm}")
    public String switchStatus(@PathVariable String switchNum,@PathVariable String nowTerm, HttpSession httpSession) throws UnsupportedEncodingException {
        nowTerm = new String(nowTerm.getBytes("ISO-8859-1"),"utf-8");
        Admin admin = (Admin) httpSession.getAttribute("admin");
        admin.setControlMIS(switchNum.charAt(0));
        admin.setNowTerm(nowTerm);
        httpSession.setAttribute("admin",admin);
        Map<String,String> map = new HashMap<>();
        map.put("switchNum",switchNum);
        map.put("nowTerm",nowTerm);
        adminService.updateSwitch(map);
        return "WEB-INF/admin/switch";
    }

    @RequestMapping("/admin/course/{courseId}")
    public String showAssignAndEditCourse(@PathVariable int courseId,Model model) {
        Course course = adminService.findCourseByid(courseId);
        List<Classroom> classrooms = adminService.findAllClassrooms();
        Set<String> classroomNameSet = new HashSet<>();
        for (Classroom room: classrooms
             ) {
            classroomNameSet.add(room.getName());
        }
        model.addAttribute("course",course);
        model.addAttribute("classrooms",classroomNameSet);
        return "WEB-INF/admin/modifyCourseInfo";
    }

    @RequestMapping("/admin/classroom/{classroomId}")
    public String showEditClassroom(@PathVariable int classroomId,Model model) {
        Classroom classroom = adminService.findClassroomById(classroomId);
        model.addAttribute("classroom",classroom);
        return "WEB-INF/admin/modifyClassroomInfo";
    }

    @RequestMapping("/admin/classroomUpdate")
    public String updateClassroom(Classroom classroom) {
        adminService.updateClassroom(classroom);
        return "redirect:/info/classroom";
    }

    @RequestMapping("/admin/courseUpdate")
    public String updateCourseDetail(Course course) {
        Classroom classroom = adminService.findClassroomsByNameAndAddr(course.getClassroom());
        course.setClassroom(classroom);
        adminService.updateCourse(course);
        return "redirect:/info/coursesDone";
    }
}
