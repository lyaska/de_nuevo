package com.sed.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class StructureController {
    @GetMapping("/structure")
    public String main(Map<String, Object> model){
        return "structure";
    }
}
