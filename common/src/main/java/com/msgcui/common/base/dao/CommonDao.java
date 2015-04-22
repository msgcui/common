package com.msgcui.common.base.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface CommonDao<T> extends PagingAndSortingRepository<T, Integer>,JpaSpecificationExecutor<T>{

}
