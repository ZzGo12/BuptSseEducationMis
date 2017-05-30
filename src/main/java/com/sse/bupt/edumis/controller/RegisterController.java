package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Nothing on 2017/5/11.
 */
@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private TeacherService teacherService;

    /**
     * 跳转至教师注册页面
     * @return
     */
    @RequestMapping("/teacher")
    public String forwardTeachaerPage() {
        return "teacher/register";
    }

    /**
     * 教师注册
     * @param teacher
     * @return
     */
    @RequestMapping("/teacherRegister")
    public String teacherRegister(Teacher teacher) {
        //TODO 验证是否合法(异常情况)
        teacherService.addTeacher(teacher);
        return "pages/index";
    }

    @RequestMapping("/course")
    public String forwardCoursePage() {
        return "teacher/course";
    }

    @RequestMapping("/courseRegister")
    public String courseRegister(Course course) {
        teacherService.addCourse(course);
        return "teacher/course";
    }
}
