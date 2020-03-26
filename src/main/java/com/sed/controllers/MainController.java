package com.sed.controllers;


import com.sed.domain.Task;
import com.sed.domain.User;
import com.sed.repos.TaskRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
public class MainController {
    @Autowired
    private TaskRepo taskRepo;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model){
        return "main";
    }

    @GetMapping("/tasks")
    public String tasks(@RequestParam(required = false, defaultValue = "") String filter, Model model){
        Iterable<Task> tasks = taskRepo.findAll();
        if(filter!=null && !filter.isEmpty()){
            tasks = taskRepo.findBySubject(filter);
        }
        else{
            tasks = taskRepo.findAll();
        }
        model.addAttribute("tasks", tasks);
        model.addAttribute("filter", filter);
        return "tasks";
    }

    @PostMapping("/tasks")
    public String addTask(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String subject,
            @RequestParam String executor,
            @RequestParam String term,
            Map<String, Object> model){
        Task task = new Task(text, subject, user, executor, term);
        taskRepo.save(task);
        Iterable<Task> tasks = taskRepo.findAll();
        model.put("tasks", tasks);
        return "redirect:/tasks/";
    }


    @GetMapping("/organisation")
    public String organisation(Map<String, Object> model){
        model.put("some", "organisation");
        return "organisation";
    }

    @GetMapping("/user-tasks/{user}")
    public String userTasks(
            @AuthenticationPrincipal User currentUser,
            @PathVariable User user,
            @RequestParam(required = false) Task task,
            Model model){
        Set<Task> tasks = user.getTasks();
        model.addAttribute("tasks", tasks);
        model.addAttribute("task", task);
        model.addAttribute("isCurrentUser", currentUser.equals(user));
        return "user-tasks";
    }

    @PostMapping("/user-tasks/{user}")
    public String updateTask(
            @AuthenticationPrincipal User currentUser,
            @PathVariable Long user,
            @RequestParam("id") Task task,
            @RequestParam("text") String text,
            @RequestParam("subject") String subject,
            @RequestParam("executor") String executor,
            @RequestParam("term") String term
    ){
        if(task.getAuthor().equals(currentUser)){
            task.setText(text);
            task.setSubject(subject);
            task.setExecutor(executor);
            task.setTerm(term);
            taskRepo.save(task);
        }
        return "redirect:/user-tasks/" + user;
    }



}
