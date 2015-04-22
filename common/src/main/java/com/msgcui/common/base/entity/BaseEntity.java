package com.msgcui.common.base.entity;

import java.util.Date;

import javax.persistence.MappedSuperclass;

import com.msgcui.common.constant.Status;

@MappedSuperclass
public class BaseEntity extends IdEntity{
	
	private Date inputDate;
	
	private Date modifyDate;
	
	private int inputUserId;
	
	private int modifyUserId;
	
	private Status status;
	
	private String descript;

	public Date getInputDate() {
		return inputDate;
	}

	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public int getInputUserId() {
		return inputUserId;
	}

	public void setInputUserId(int inputUserId) {
		this.inputUserId = inputUserId;
	}

	public int getModifyUserId() {
		return modifyUserId;
	}

	public void setModifyUserId(int modifyUserId) {
		this.modifyUserId = modifyUserId;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

}
