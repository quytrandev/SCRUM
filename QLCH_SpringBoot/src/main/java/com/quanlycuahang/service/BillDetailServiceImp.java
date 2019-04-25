package com.quanlycuahang.service;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.quanlycuahang.models.CartLineInfo;
import com.quanlycuahang.models.CustomerInfo;
import com.quanlycuahang.repository.BillRepository;
import com.quanlycuahang.repository.DetailBillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quanlycuahang.models.BillDetails;

@Service
@Transactional
public class BillDetailServiceImp implements BillDetailService{

    @Autowired
    DetailBillRepository detailBillRepository;

    @Override
    public List<BillDetails> getAllBillDetail() { return (List<BillDetails>) detailBillRepository.findAll(); }

    @Override
    public BillDetails getBillDetailById(int id) {
        return detailBillRepository.findById(id).get();
    }

    @Override
    public void saveOrUpdate(BillDetails billDetails) {
        detailBillRepository.save(billDetails);
    }

    @Override
    public void deleteBillDetail(int id) {
        detailBillRepository.deleteById(id);
    }

    @Override
    @Modifying
    @Query (value = "insert into bi (amount,price,quantity,id_bill,id_product)" +
            " VALUES (?1,?2,?3,?4,?5)", nativeQuery = true)
    public void save(double amount, double price,int quantity,int id_bill,int id_product)
    {
    }

//    @Override
//    @Query("SELECT e FROM bill_details e WHERE e.id_bill = ?1")
//    public List<BillDetails> findBillDetail(int id_bill)
//


}
