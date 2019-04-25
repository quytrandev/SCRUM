package com.dwaft.accommodation.service;

import com.dwaft.accommodation.model.User;

import java.util.List;

public interface UserService {
    List<User> findAllUser();

    public User getUserById(int id);

    public void saveOrUpdate(User User);

    public void deleteUser(int id);

}
