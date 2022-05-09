package com.sharding.example.demo.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * @Author: happyi
 * @Date: 2022/5/7 下午5:32
 */
@Entity
@Table(name = "nx_order_item")
public class OrderItem {
    private String id;
    private String orderId;
    private String customerId;
    private String productId;
    private Integer qty;
    private Double price;


    @Id
    @Column(length = 40)
    @GenericGenerator(name = "uuid", strategy = "uuid")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Column(length = 40)
    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    @Column(length = 40)
    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public Integer getQty() {
        return qty;
    }

    public void setQty(Integer qty) {
        this.qty = qty;
    }

    @Column(length = 40)
    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}
