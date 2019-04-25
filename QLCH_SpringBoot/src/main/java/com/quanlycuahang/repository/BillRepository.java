package com.quanlycuahang.repository;

import com.quanlycuahang.models.Bill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.quanlycuahang.models.Bill;

public interface BillRepository extends JpaRepository<Bill, Integer>{

}
