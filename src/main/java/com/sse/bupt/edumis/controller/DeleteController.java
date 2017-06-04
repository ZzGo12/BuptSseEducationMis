package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.service.AdminService;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Nothing on 2017/6/3.
 */
@Controller
@RequestMapping("/delete")
public class DeleteController {
    @Autowired
    TeacherService teacherService;
    @Autowired
    AdminService adminService;
    @RequestMapping("/course/{courseId}")
    public String deleteCourse(@PathVariable int courseId) {
        teacherService.deleteCourseById(courseId);
        return "redirect:/info/courses";
    }

    @RequestMapping("/teacher/{teacherNo}")
    public String deleteTeacher(@PathVariable String teacherNo) {
        adminService.deleteTeacherByNo(teacherNo);
        return "redirect:/info/teachers";
    }

    @RequestMapping("/student/{studentNo}")
    public String deleteStudent(@PathVariable String studentNo) {
        adminService.deleteStudentByNo(studentNo);
        return "redirect:/info/students";
    }

    @RequestMapping("/classroom/{classroomId}")
    public String deleteClassroom(@PathVariable int classroomId) {
        adminService.deleteClassroomById(classroomId);
        return "redirect:/info/classroom";
    }
}
