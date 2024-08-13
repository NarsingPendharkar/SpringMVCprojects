package com.finance.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.finance.Model.Income;

@Repository
public interface IncomeRepository extends JpaRepository<Income, Integer> {
	
	@Query(value = "SELECT SUM(amount) FROM income WHERE user_id = ?1", nativeQuery = true)
	public Double totalIncome(int userId);

}
