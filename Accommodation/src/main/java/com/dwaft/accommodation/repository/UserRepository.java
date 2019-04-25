package com.dwaft.accommodation.repository;

import com.dwaft.accommodation.model.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User,Integer>{
}
