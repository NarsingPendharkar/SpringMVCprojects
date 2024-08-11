package com.finance.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.finance.Model.Expense;

@Repository
public interface ExpenseRepository  extends JpaRepository<Expense, Integer>{

}
