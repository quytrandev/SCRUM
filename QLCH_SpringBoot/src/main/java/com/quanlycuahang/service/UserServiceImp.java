package com.quanlycuahang.service;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.quanlycuahang.models.CartLineInfo;
import com.quanlycuahang.models.CustomerInfo;
import com.quanlycuahang.repository.BillRepository;
import com.quanlycuahang.repository.DetailBillRepository;
import com.quanlycuahang.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.quanlycuahang.models.User;

@Service
@Transactional
public class UserServiceImp implements UserService{

    @Autowired
    UserRepository userRepository;

    @Override
    public List<User> getAllUser() { return (List<User>) userRepository.findAll(); }

    @Override
    public User getUserById(int id) {
        return userRepository.findById(id).get();
    }

    @Override
    public void saveOrUpdate(User user) {
        userRepository.save(user);
    }

    @Override
    public void deleteUser(int id) {
        userRepository.deleteById(id);
    }

}
