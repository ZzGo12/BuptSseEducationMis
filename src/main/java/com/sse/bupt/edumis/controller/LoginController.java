package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by ZzGo on 2017/5/27.
 */
@Controller
@RequestMapping("/login")
//登录控制器
public class LoginController {
    @Autowired
    TeacherService teacherService;
    @RequestMapping("/teacher")
    public String teacherLogin(Teacher teacher, HttpSession httpSession,Model model) {
        int res = teacherService.findTeacherByNoAndPwd(teacher);
        if(res == 1) {
            httpSession.setAttribute("teacher",teacher);
            return "teacher/home";
        }else {
            model.addAttribute("message","用户名或密码错误");
            return "index";
        }
    }
}
