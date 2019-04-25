package com.quanlycuahang.service;
import com.quanlycuahang.models.BillDetails;
import com.quanlycuahang.models.CartInfo;

import javax.persistence.criteria.Order;
import javax.websocket.Session;
import java.util.List;

public interface BillDetailService {

    public List<BillDetails> getAllBillDetail();

    public BillDetails getBillDetailById(int id);

    public void saveOrUpdate(BillDetails billDetails);

    public void deleteBillDetail(int id);

    public void save( double amount, double price,int quantity,int id_bill,int id_product);

//    List<BillDetails> findBillDetail(int id_bill);

}
