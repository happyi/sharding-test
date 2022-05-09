package com.sharding.example.demo;

import com.sharding.example.demo.interceptor.DynamicDataSourceHolder;
import com.sharding.example.demo.jpa.OrderItemRepository;
import com.sharding.example.demo.jpa.OrderRepository;
import com.sharding.example.demo.model.Order;
import com.sharding.example.demo.model.OrderItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import javax.xml.crypto.Data;
import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = {DemoApplication.class})
public class ShardingTest {

    @Resource
    OrderRepository orderRepository;
    @Resource
    OrderItemRepository orderItemRepository;

    @Test
    public void testAddOrder() {

        DynamicDataSourceHolder.setDataSource("master");
        Long startTime = System.currentTimeMillis();
        for(int i = 0;i<100000;i++){
            insertOrder();
        }
        Long t1 = (System.currentTimeMillis() - startTime)/10000;
        System.out.println("不分库分表平均耗时:"+t1+"ms");
        DynamicDataSourceHolder.clearDataSource();

        DynamicDataSourceHolder.setDataSource("sharding");
        startTime = System.currentTimeMillis();
        for(int i = 0;i<100000;i++){
            insertOrder();
        }
        Long t2 = (System.currentTimeMillis() - startTime)/10000;
        System.out.println("分库分表总平均耗时:"+ t2+"ms,性能损耗:"+Math.round(t2*100d/t1)+"%");
        DynamicDataSourceHolder.clearDataSource();

    }

    private String insertOrder() {
        String customerId = UUID.randomUUID().toString();
        Order order = new Order();
        order.setId(UUID.randomUUID().toString());
        order.setOrgId(UUID.randomUUID().toString());
        order.setCustomerId(customerId);
        order.setOrderNumber(System.currentTimeMillis());
        order.setOrderType("购买");
        order.setDescription("分片测试");
        order = orderRepository.save(order);
        OrderItem orderItem = new OrderItem();
        orderItem.setId(UUID.randomUUID().toString());
        orderItem.setOrderId(order.getId());
        orderItem.setCustomerId(customerId);
        orderItem.setProductId(UUID.randomUUID().toString());
        orderItem.setQty((int)(Math.random()*(100+1)));
        orderItem.setPrice(Math.random());
        orderItemRepository.save(orderItem);
        return order.getId();
    }
}
