package com.sed.repos;

import com.sed.domain.Task;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TaskRepo extends CrudRepository<Task, Integer> {
    List<Task> findBySubject(String subject);
}
