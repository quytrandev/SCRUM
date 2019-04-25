package com.quanlycuahang.service;

import com.quanlycuahang.models.User;
import com.quanlycuahang.models.CartInfo;
import org.springframework.data.repository.query.Param;

import javax.persistence.criteria.Order;
import javax.websocket.Session;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public interface UserService {
    public List<User> getAllUser();

    public User getUserById(int id);

    public void saveOrUpdate(User user);

    public void deleteUser(int id);

}
