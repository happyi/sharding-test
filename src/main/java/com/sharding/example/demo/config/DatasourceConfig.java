package com.sharding.example.demo.config;


import com.sharding.example.demo.interceptor.DynamicDataSource;
import org.apache.shardingsphere.driver.api.ShardingSphereDataSourceFactory;
import org.apache.shardingsphere.infra.config.algorithm.ShardingSphereAlgorithmConfiguration;
import org.apache.shardingsphere.sharding.api.config.ShardingRuleConfiguration;
import org.apache.shardingsphere.sharding.api.config.rule.ShardingTableRuleConfiguration;
import org.apache.shardingsphere.sharding.api.config.strategy.sharding.StandardShardingStrategyConfiguration;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * @Author: ZFY
 * @Date: 2018/10/19 12:00
 * @Description:
 */
@Configuration
@EntityScan(basePackages = "com.sharding.example.demo.model")
@EnableJpaRepositories(basePackages = {"com.sharding.example.demo.jpa"})
@EnableTransactionManagement
@EnableAutoConfiguration
public class DatasourceConfig {

    @Resource
    private DbProperties dbProperties;


    @Bean(name = "dataSource")
    @Primary
    public DataSource dataSource() throws SQLException {

        //按照目标数据源名称和目标数据源对象的映射存放在Map中
        Map<Object, Object> targetDataSources = new HashMap<>(2);

        targetDataSources.put("master",  dbProperties.getMaster1());

        targetDataSources.put("sharding", createShardingDataSource( dbProperties.getMaster2()));

        //包装多数据源
        DynamicDataSource dataSource = new DynamicDataSource();
        dataSource.setTargetDataSources(targetDataSources);
        //设置默认的数据源，当拿不到数据源时，使用此配置
        dataSource.setDefaultTargetDataSource(dbProperties.getMaster1());
        return dataSource;
    }

    private DataSource createShardingDataSource(DataSource source) throws SQLException {
        // 配置分片规则
        Map<String, DataSource> dataSourceMap = new HashMap<>();
        dataSourceMap.put("m1", source);
        ShardingTableRuleConfiguration orderTableRuleConfig = new ShardingTableRuleConfiguration("nx_order", "m1.nx_order_s${0..7}");
        orderTableRuleConfig.setTableShardingStrategy(new StandardShardingStrategyConfiguration("customer_id", "tableShardingAlgorithm"));

        ShardingTableRuleConfiguration orderItemTableRuleConfig = new ShardingTableRuleConfiguration("nx_order_item", "m1.nx_order_item_s${0..7}");
        orderItemTableRuleConfig.setTableShardingStrategy(new StandardShardingStrategyConfiguration("customer_id", "tableShardingAlgorithm"));

        // 配置分片算法
        ShardingRuleConfiguration shardingRuleConfig = new ShardingRuleConfiguration();
        shardingRuleConfig.getTables().add(orderTableRuleConfig);
        shardingRuleConfig.getTables().add(orderItemTableRuleConfig);
        shardingRuleConfig.getBindingTableGroups().add("nx_order,nx_order_item");
        Properties tableShardingAlgorithmrProps = new Properties();
        tableShardingAlgorithmrProps.setProperty("sharding-count", "8");
        shardingRuleConfig.getShardingAlgorithms().put("tableShardingAlgorithm", new ShardingSphereAlgorithmConfiguration("HASH_MOD", tableShardingAlgorithmrProps));
        // 创建 ShardingSphereDataSource
        Properties properties = new Properties();
        properties.setProperty("sql-show", "false");
        DataSource sharding = ShardingSphereDataSourceFactory.createDataSource(dataSourceMap, Collections.singleton(shardingRuleConfig), properties);
        return sharding;

    }

}
