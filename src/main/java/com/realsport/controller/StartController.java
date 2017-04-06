package com.realsport.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Igor on 31.03.2017.
 */
@Controller
public class StartController {

    @RequestMapping(value = "/start")
    public String onStart(){
        return "start";
    }

    @RequestMapping(value = "/maps")
    public String onMap(){
        return "maps";
    }

}
