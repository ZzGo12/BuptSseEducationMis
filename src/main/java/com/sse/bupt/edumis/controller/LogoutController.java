package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Admin;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Teacher;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Nothing on 2017/5/30.
 */
@Controller
@RequestMapping("/logout")
public class LogoutController {
    @RequestMapping("/teacher")
    public String teacherLogout(HttpSession httpSession, HttpServletResponse response) {
        Teacher teacher = (Teacher) httpSession.getAttribute("teacher");
        Cookie userNameCookie = new Cookie("teacherUserName", teacher.getNo());
        Cookie passwordCookie = new Cookie("teacherPassword", teacher.getPwd());
        userNameCookie.setMaxAge(0);
        userNameCookie.setPath("/");
        passwordCookie.setMaxAge(0);
        passwordCookie.setPath("/");
        response.addCookie(userNameCookie);
        response.addCookie(passwordCookie);
        httpSession.setAttribute("teacher",null);
        return "pages/index";
    }
    @RequestMapping("/admin")
    public String adminLogout(HttpSession httpSession,HttpServletResponse response) {
        Admin admin = (Admin) httpSession.getAttribute("admin");
        Cookie userNameCookie = new Cookie("adminUserName", admin.getUsername());
        Cookie passwordCookie = new Cookie("adminPassword", admin.getPassword());
        userNameCookie.setMaxAge(0);
        userNameCookie.setPath("/");
        passwordCookie.setMaxAge(0);
        passwordCookie.setPath("/");
        response.addCookie(userNameCookie);
        response.addCookie(passwordCookie);
        httpSession.setAttribute("admin",null);
        return "admin/index";
    }

    @RequestMapping("/student")
    public String studentLogout(HttpSession httpSession,HttpServletResponse response) {
        Student student = (Student) httpSession.getAttribute("student");
        Cookie userNameCookie = new Cookie("studentUserName", student.getNo());
        Cookie passwordCookie = new Cookie("studentPassword", student.getPwd());
        userNameCookie.setMaxAge(0);
        userNameCookie.setPath("/");
        passwordCookie.setMaxAge(0);
        passwordCookie.setPath("/");
        response.addCookie(userNameCookie);
        response.addCookie(passwordCookie);
        httpSession.setAttribute("student",null);
        return "pages/index";
    }
}
