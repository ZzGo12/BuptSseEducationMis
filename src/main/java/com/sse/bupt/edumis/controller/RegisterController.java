package com.sse.bupt.edumis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Nothing on 2017/5/11.
 */
@Controller
@RequestMapping("/register")
public class RegisterController {
    @RequestMapping("/teacher")
    public String forwardTeachaerPage() {
        return "teacher/register";
    }

}
