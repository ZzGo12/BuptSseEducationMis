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
    public String loginIndex(String role) {
        return "forward:/login/"+role;
    }

    @RequestMapping("/student")
    public String studentLogin(Student student, HttpSession httpSession,Model model) {
        Student studentByNoAndPwd = studentService.findStudentByNoAndPwd(student);
        if(studentByNoAndPwd != null) {
            httpSession.setAttribute("student",studentByNoAndPwd);
            return "pages/home";
        }else {
            model.addAttribute("message","用户名或密码错误");
            return "pages/index";
        }
    }

    @RequestMapping("/teacher")
    public String teacherLogin(Teacher teacher, HttpSession httpSession,Model model) {
        Teacher teacherByNoAndPwd = teacherService.findTeacherByNoAndPwd(teacher);
        if(teacherByNoAndPwd != null) {
            httpSession.setAttribute("teacher",teacherByNoAndPwd);
            return "pages/home";
        }else {
            model.addAttribute("message","用户名或密码错误");
            return "pages/index";
        }
    }

    @RequestMapping("/adminIndex")
    public String showAdminPage() {
        return "WEB-INF/admin/index";
    }

    @RequestMapping("/admin")
    public  String adminLogin(Admin admin,HttpSession httpSession,Model model) {
        Admin adminByUsernameAndPwd = adminService.findAdminByUsernameAndPwd(admin);
        if(adminByUsernameAndPwd != null) {
            httpSession.setAttribute("admin",adminByUsernameAndPwd);
            return "WEB-INF/admin/home";
        }else {
            model.addAttribute("message","用户名或密码错误");
            return "WEB-INF/admin/index";
        }
    }
}
