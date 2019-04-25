package com.quanlycuahang.service;

import com.quanlycuahang.models.Bill;
import com.quanlycuahang.models.CartInfo;

import javax.persistence.criteria.Order;
import javax.websocket.Session;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public interface BillService {
    public List<Bill> getAllBill();

    public Bill getBillById(int id);

    public void saveOrUpdate(Bill bill);

    public void deleteBill(int id);

    public int Count();

    public void save(int id, double amount, String customer_address, String customer_name, String customer_email,
                     String customer_phone,int ordernum);
}
