package com.msgcui.common.base.service;

/**
 * service基类
 * @author msgcui
 *
 */
public interface CommonService <T>{
	/**
	 * 保存
	 * @param t
	 */
	public void save(T t);
	/**
	 * 删除
	 * @param t
	 */
	public void delete(T t);
	/**
	 * 根据ID查询
	 * @param id
	 * @return
	 */
	public T findById(int id);
	

}
