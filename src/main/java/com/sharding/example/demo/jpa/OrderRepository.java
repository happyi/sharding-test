package com.sharding.example.demo.jpa;

import com.sharding.example.demo.model.Order;
import com.sharding.example.demo.model.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order,String> {

}
