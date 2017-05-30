package com.sse.bupt.edumis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Nothing on 2017/5/30.
 */
@Controller
@RequestMapping("/info")
public class ShowInfoController {
    @RequestMapping("/teacher")
    public String showTeacherInfo() {
        return "teacher/userInfo";
    }
}
