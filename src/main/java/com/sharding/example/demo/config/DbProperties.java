package com.sharding.example.demo.config;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author yuting
 */
@Component
@ConfigurationProperties(prefix = "spring.dynamic")
public class DbProperties {

    private HikariDataSource master1;

    private HikariDataSource master2;

    public HikariDataSource getMaster1() {
        return master1;
    }

    public void setMaster1(HikariDataSource master1) {
        this.master1 = master1;
    }

    public HikariDataSource getMaster2() {
        return master2;
    }

    public void setMaster2(HikariDataSource master2) {
        this.master2 = master2;
    }
}
