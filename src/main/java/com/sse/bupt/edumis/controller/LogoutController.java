package com.sse.bupt.edumis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by Nothing on 2017/5/30.
 */
@Controller
@RequestMapping("/logout")
public class LogoutController {
    @RequestMapping("/teacher")
    public String teacherLogout(HttpSession httpSession) {
        httpSession.setAttribute("teacher",null);
        return "pages/index";
    }
}
