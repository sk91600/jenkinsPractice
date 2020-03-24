package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * @program: jenkinsPractice
 * @description: jenkins简单测试
 * @author: Mr.Wang
 * @create: 2019-08-16 15:31
 **/
@RestController
public class TestHello {
    @RequestMapping("/")
    public String ShowMessage(){
        return "Hello!!!123456";
    }
}
