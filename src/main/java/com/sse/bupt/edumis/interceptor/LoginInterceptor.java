package com.sse.bupt.edumis.interceptor;

import com.sse.bupt.edumis.domain.Admin;
import com.sse.bupt.edumis.domain.Student;
import com.sse.bupt.edumis.domain.Teacher;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String url = httpServletRequest.getRequestURI();
        //URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
        if(url.indexOf("login")>=0 || url.indexOf("register")>=0){
            return true;
        }
        //获取Session
        HttpSession session = httpServletRequest.getSession();
        Student student = (Student) session.getAttribute("student");
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        Admin admin = (Admin) session.getAttribute("admin");

        if(student != null || teacher !=null || admin !=null){
            return true;
        }


        //不符合条件的，跳转到登录界面
        session.setAttribute("MyURI",url);
        httpServletRequest.getRequestDispatcher("/WEB-INF/pages/index.jsp").forward(httpServletRequest, httpServletResponse);

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
