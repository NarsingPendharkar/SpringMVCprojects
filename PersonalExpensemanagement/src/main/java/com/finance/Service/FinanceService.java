package com.finance.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finance.Model.Income;
import com.finance.Repository.ExpenseRepository;
import com.finance.Repository.IncomeRepository;

@Service
public class FinanceService {
	
	@Autowired
	private IncomeRepository incomeRepository;
	@Autowired
	private ExpenseRepository expenseRepository;
	
	
	// save income
	public void saveIncome(Income income) {
		 incomeRepository.save(income);
	}
	//get total income
	public Double totalIncome(int userid) {
		return incomeRepository.totalIncome(userid);
	}

}
