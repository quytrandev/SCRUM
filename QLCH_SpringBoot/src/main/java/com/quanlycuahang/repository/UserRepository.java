package com.quanlycuahang.repository;

import com.quanlycuahang.models.Bill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.quanlycuahang.models.User;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

public interface UserRepository extends CrudRepository<User, Integer>{
//    @Query("SELECT e FROM user e WHERE e.username = :username")
//    User FindByUsername( @Param ( "username" ) String username);
}
