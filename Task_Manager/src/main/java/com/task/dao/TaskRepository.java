package com.task.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.task.model.Tasks;

@Repository
public interface TaskRepository  extends JpaRepository<Tasks, Long> {

}
