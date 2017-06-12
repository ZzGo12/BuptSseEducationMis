package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Admin;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.service.AdminService;
import com.sse.bupt.edumis.service.StudentService;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by ZzGo on 2017/5/27.
 */
@Controller
@RequestMapping("/login")
//登录控制器
public class LoginController {
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private AdminService adminService;
    @Autowired
    private StudentService studentService;

    @RequestMapping("/index")
    public String loginIndex(String role,HttpSession httpSession) {
        Admin admin = (Admin) httpSession.getAttribute("admin");
        Student student = (Student) httpSession.getAttribute("student");
        Teacher teacher = (Teacher) httpSession.getAttribute("teacher");
        if(admin!=null) {
            return "admin/home";
        }
        if(student!=null) {
            return "pages/home";
        }
        if(teacher!=null) {
            return "pages/home";
        }
        return "forward:/login/"+role;
    }

    @RequestMapping("/student")
    public String studentLogin(Student student, String autoLoginTimeout, HttpSession httpSession, Model model, HttpServletResponse response) {
        Student studentByNoAndPwd = studentService.findStudentByNoAndPwd(student);
        if(studentByNoAndPwd != null) {
            httpSession.setAttribute("student",studentByNoAndPwd);
            if("on".equals(autoLoginTimeout)) {
                Cookie userNameCookie = new Cookie("studentUserName", student.getNo());
                Cookie passwordCookie = new Cookie("studentPassword", student.getPwd());
                userNameCookie.setMaxAge(5*365*24*60*60);
                userNameCookie.setPath("/");
                passwordCookie.setMaxAge(5*365*24*60*60);
                passwordCookie.setPath("/");
                response.addCookie(userNameCookie);
                response.addCookie(passwordCookie);
            }
            return "pages/home";
        }else {
            model.addAttribute("message","用户名或密码错误");
            return "pages/index";
        }
    }

    @RequestMapping("/teacher")
    public String teacherLogin(Teacher teacher,String autoLoginTimeout, HttpSession httpSession,Model model,HttpServletResponse response) {
        Teacher teacherByNoAndPwd = teacherService.findTeacherByNoAndPwd(teacher);
        if(teacherByNoAndPwd != null) {
            httpSession.setAttribute("teacher",teacherByNoAndPwd);
            if("on".equals(autoLoginTimeout)) {
                Cookie userNameCookie = new Cookie("teacherUserName", teacher.getNo());
                Cookie passwordCookie = new Cookie("teacherPassword", teacher.getPwd());
                userNameCookie.setMaxAge(5*365*24*60*60);
                userNameCookie.setPath("/");
                passwordCookie.setMaxAge(5*365*24*60*60);
                passwordCookie.setPath("/");
                response.addCookie(userNameCookie);
                response.addCookie(passwordCookie);
            }
            return "pages/home";
        }else {
            model.addAttribute("message","用户名或密码错误");
            return "pages/index";
        }
    }

    @RequestMapping("/adminIndex")
    public String showAdminPage() {
        return "admin/index";
    }

    @RequestMapping("/admin")
    public  String adminLogin(Admin admin,String autoLoginTimeout,HttpSession httpSession,Model model,HttpServletResponse response) {
        Admin adminByUsernameAndPwd = adminService.findAdminByUsernameAndPwd(admin);
        if(adminByUsernameAndPwd != null) {
            httpSession.setAttribute("admin",adminByUsernameAndPwd);
            if("on".equals(autoLoginTimeout)) {
                Cookie userNameCookie = new Cookie("adminUserName", admin.getUsername());
                Cookie passwordCookie = new Cookie("adminPassword", admin.getPassword());
                userNameCookie.setMaxAge(5*365*24*60*60);
                userNameCookie.setPath("/");
                passwordCookie.setMaxAge(5*365*24*60*60);
                passwordCookie.setPath("/");
                response.addCookie(userNameCookie);
                response.addCookie(passwordCookie);
            }
            return "admin/home";
        }else {
            model.addAttribute("message","用户名或密码错误");
            return "admin/index";
        }
    }
}
