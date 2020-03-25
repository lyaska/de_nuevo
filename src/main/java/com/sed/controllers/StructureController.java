package com.sed.controllers;

import com.sed.domain.Division;

import com.sed.repos.DivRepo;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class StructureController {
    @Autowired
    DivRepo divRepo;

    @GetMapping("/structure")
    public String main(Map<String, Object> model){
        return "structure";
    }

    @GetMapping("/divs")
    public String divs(Model model){
     model.addAttribute("divs", divRepo.findAll());
     return "divs";
    }

    @PostMapping("/divs")
    public String addDiv(@RequestParam String divName, @RequestParam String contact, @RequestParam String chef, Model model){
        Division division = new Division(divName, contact, chef);
        divRepo.save(division);
        Iterable<Division> divs = divRepo.findAll();
        model.addAttribute("divs", divs);
        return "divs";
    }
}
