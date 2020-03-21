package com.sed;

import com.sed.domain.Task;
import com.sed.repos.TaskRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class GreetingController {
    @Autowired
    private TaskRepo taskRepo;

    @GetMapping("/greeting")
    public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Map<String, Object> model) {
        model.put("name", name);
        return "greeting";
    }

    @GetMapping
    public String main(Map<String, Object> model){
        return "main";
    }

    @GetMapping("/tasks")
    public String tasks(Map<String, Object> model){
        Iterable<Task> tasks = taskRepo.findAll();
        model.put("tasks", tasks);
        return "tasks";
    }

    @PostMapping("/tasks")
    public String addTask(@RequestParam String text, @RequestParam String subject, Map<String, Object> model){
        Task task = new Task(text, subject);
        taskRepo.save(task);
        Iterable<Task> tasks = taskRepo.findAll();
        model.put("tasks", tasks);
        return "tasks";
    }
    @PostMapping("filter")
    public String filter(@RequestParam String filter, Map<String, Object> model){
        Iterable<Task> tasks;
        if(filter!=null && !filter.isEmpty()){
            tasks = taskRepo.findBySubject(filter);
        }
        else{
            tasks = taskRepo.findAll();
        }
        model.put("tasks", tasks);
        return "tasks";
    }

    @GetMapping("/organisation")
    public String organisation(Map<String, Object> model){
        model.put("some", "organisation");
        return "organisation";
    }



}
