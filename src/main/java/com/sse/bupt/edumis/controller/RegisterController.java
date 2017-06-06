package com.sse.bupt.edumis.controller;

import com.sse.bupt.edumis.domain.Classroom;
import com.sse.bupt.edumis.domain.Course;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Teacher;
import com.sse.bupt.edumis.service.AdminService;
import com.sse.bupt.edumis.service.StudentService;
import com.sse.bupt.edumis.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Nothing on 2017/5/11.
 */
@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    private TeacherService teacherService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private StudentService studentService;
    @RequestMapping("/student")
    public String forwardStudentPage() {
        return "students/register";
    }

    @RequestMapping("/studentRegister")
    public String studentRegister(Student student) {
        //TODO 验证是否合法(异常情况)
        studentService.addStudent(student);
        return "pages/index";
    }
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

    @RequestMapping("/classroom")
    public String forwardClassroomPage() {
        return "WEB-INF/admin/classroom";
    }

    @RequestMapping("/classroomRegister")
    public String courseRegister(Classroom classroom) {
        adminService.addClassroom(classroom);
        return "WEB-INF/admin/classroom";
    }

    @RequestMapping("/student/course/{courseId}")
    public @ResponseBody String chooseCourse(@PathVariable int courseId,@RequestBody Map<String,Integer> map,HttpSession httpSession) {
        Integer count = map.get("count");
        Integer total = map.get("total");
        String message = null;
        if(count < total) {
            message = "选课失败，该课程人数已满";
        }else {
            Student student = (Student) httpSession.getAttribute("student");
            studentService.addStudentCourse(student.getNo(),courseId);
            message = "选课成功。";
        }
        return message;
    }
}
