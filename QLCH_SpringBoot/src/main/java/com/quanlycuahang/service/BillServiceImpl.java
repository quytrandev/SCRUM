package com.quanlycuahang.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.quanlycuahang.models.CartLineInfo;
import com.quanlycuahang.models.CustomerInfo;
import com.quanlycuahang.repository.BillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quanlycuahang.models.Bill;
import com.quanlycuahang.models.CartInfo;
import com.quanlycuahang.repository.ProductRepository;

import javax.persistence.criteria.Order;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import static java.lang.Math.toIntExact;

@Service
@Transactional
public class BillServiceImpl implements BillService{

    @Autowired
    BillRepository billRepository;

    @Override
    public List<Bill> getAllBill() { return (List<Bill>) billRepository.findAll(); }

    @Override
    public Bill getBillById(int id) {
        return billRepository.findById(id).get();
    }

    @Override
    public void saveOrUpdate(Bill bill) {
        billRepository.save(bill);
    }

    @Override
    public void deleteBill(int id) {
        billRepository.deleteById(id);
    }

    @Override
    public int Count()
    {
        int count=toIntExact(billRepository.count());
        return count;
    }

    @Override
    @Modifying

    @Query(value = "insert into bill (id,AMOUNT,customer_address,customer_email,customer_name,customer_phone,ORDER_NUM)" +
            " VALUES (?1,?2,?3,?4,?5,?6,?7)", nativeQuery = true)
    public void save(int id, double amount, String customer_address, String customer_email, String customer_name,
                     String customer_phone,int orderNum)
    {
    }


}

