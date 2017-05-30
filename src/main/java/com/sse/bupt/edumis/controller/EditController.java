package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by Nothing on 2017/5/30.
 */
@Controller
@RequestMapping("/edit")
public class EditController {
    @Autowired
    private TeacherService teacherService;
    @RequestMapping("/teacher")
    public String showEditTeacher() {
        return "teacher/modifyUserInfo";
    }
    @RequestMapping("/teacherUpdate")
    public String updateTeacher(Teacher teacher, HttpSession httpSession) {
        // TODO 检验数据~
        teacherService.updateTeacher(teacher);
        httpSession.setAttribute("teacher",teacher);
        return "redirect:/info/teacher";
    }
}
