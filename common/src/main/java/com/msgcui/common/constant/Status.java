package com.msgcui.common.constant;

/**
 * 状态
 * @author msgcui
 *
 */
public enum Status {

	disable,
	enable;
	
	public String toString(){
		switch(this){
		  case disable : 
			  return "不可用";
		  case enable :
			  return "可用";
		  default : 
			  return null;
		}
	}
	
}
