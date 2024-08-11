package com.finance.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.finance.Model.Income;

@Repository
public interface IncomeRepository extends JpaRepository<Income, Integer> {

}
