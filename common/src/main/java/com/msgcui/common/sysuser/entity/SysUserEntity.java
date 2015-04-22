package com.msgcui.common.sysuser.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.msgcui.common.base.entity.BaseEntity;
import com.msgcui.common.constant.Common;

@Table(name="c_s_user")
@Entity
public class SysUserEntity extends BaseEntity{
	
	/**
	 * 组名称
	 */
	private String groupName;
	
	private String password;
	
	private String salt;
	
	private String loginName;
	
	private String email;
	
	private long age;
	
	private Common sex;

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getAge() {
		return age;
	}

	public void setAge(long age) {
		this.age = age;
	}

	public Common getSex() {
		return sex;
	}

	public void setSex(Common sex) {
		this.sex = sex;
	}

}
