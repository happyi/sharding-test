# sharding-test
 分库分表性能测试
# 环境
 spring boot 2.6.7   
 jpa   
 shardingsphere 5.0.0   
 
# 说明

建表语句： resources/test.sql  
分片键 ：customer_id  
分片算法 ：HASH_MOD     
分片数：8   
绑定表： nx_order nx_order_item   

# 测试结果
```
不分库分表平均耗时:18ms   
分库分表总平均耗时:57ms,性能损耗:317%   
```
# 测试代码 
详情参考   com.sharding.example.demo.ShardingTest   
···
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
···
