/**
 *
 * TODO
 *
 */
package com.three.caideli.dao.daoImp;

import org.springframework.stereotype.Component;

import com.three.base.BaseDaoImpl;
import com.three.caideli.dao.BackUserDao;

import caideli.bean.BackUser;


/**
 * @author :caideli
 * @pakageName:caideli.dao.daoImpl
 * @CreatTime ：2015年9月28日 上午11:35:45 
 */
@Component("backUser")
public class BackUserDaoImpl extends BaseDaoImpl<BackUser> implements BackUserDao {
	/** 注入用户对象  */
	public BackUserDaoImpl() {
		super(BackUser.class);
	}

}
