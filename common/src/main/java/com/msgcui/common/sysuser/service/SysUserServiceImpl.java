package com.msgcui.common.sysuser.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.msgcui.common.sysuser.dao.SysUserDao;
import com.msgcui.common.sysuser.entity.SysUserEntity;

@Service
@Transactional
public class SysUserServiceImpl implements SysUserService{
	
	@Autowired
	private SysUserDao dao;

	@Override
	public void save(SysUserEntity t) {
		dao.save(t);
	}

	@Override
	public void delete(SysUserEntity t) {
		dao.delete(t);
		
	}

	@Override
	public SysUserEntity findById(int id) {
		return dao.findOne(id);
	}

}
