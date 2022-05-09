package com.sharding.example.demo.interceptor;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * @author yuting
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

    /**
     * @return
     */
    @Override
    protected Object determineCurrentLookupKey() {
        return DynamicDataSourceHolder.getDataSource();
    }

}
