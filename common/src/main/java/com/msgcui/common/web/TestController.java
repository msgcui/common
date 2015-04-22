package com.msgcui.common.web;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.msgcui.common.constant.Common;
import com.msgcui.common.constant.Status;
import com.msgcui.common.sysuser.entity.SysUserEntity;
import com.msgcui.common.sysuser.service.SysUserService;

@Controller
@RequestMapping(value="/test")
public class TestController {
	
	@Autowired
	private SysUserService  service;
	
	@RequestMapping(method=RequestMethod.GET)
	public String test(){
		
//		SysUserEntity user = new SysUserEntity();
//		user.setAge(20);
//		user.setDescript("test");
//		user.setEmail("xx@xx.com");
//		user.setGroupName("11");
//		user.setInputDate(new Date());
//		user.setModifyDate(new Date());
//		user.setPassword("123456");
//		user.setSalt("1024");
//		user.setSex(Common.man);
//		user.setStatus(Status.enable);
//		user.setLoginName("testabc");
//		
//		service.save(user);
		
		return "login";
	}
	
	@RequestMapping(value="index")
	public String index(){
		
		return "test";
	}

}
