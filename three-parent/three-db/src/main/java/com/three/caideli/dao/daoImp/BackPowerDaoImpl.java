/**
 * 权限dao实现类
 */
package com.three.caideli.dao.daoImp;

import org.springframework.stereotype.Component;




import com.three.base.BaseDaoImpl;
import com.three.caideli.dao.BackPowerDao;

import caideli.bean.BackPower;


/**
 * 
 * @author :caideli
 * @pakageName:caideli.dao.daoImpl
 * @CreatTime ：2015年9月22日 下午3:38:13
 */
@Component("backPowerDao")
public class BackPowerDaoImpl extends BaseDaoImpl<BackPower> implements BackPowerDao {
	/**注入标识属于哪个对象的操作*/
	public BackPowerDaoImpl() {
		super(BackPower.class);
	}
}
