package com.quanlycuahang.repository;

import com.quanlycuahang.models.BillDetails;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DetailBillRepository extends CrudRepository<BillDetails, Integer>{
}
