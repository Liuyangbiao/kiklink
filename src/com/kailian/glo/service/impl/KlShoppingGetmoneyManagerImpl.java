/*

 */

package com.kailian.glo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kailian.glo.dao.ICmsDeleteBackupDao;
import com.kailian.glo.model.CmsDeleteBackup;
import com.kailian.glo.model.KlShoppingGetmoney;

import com.kailian.glo.model.KlShoppingGetmoney;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingGetmoneyQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlShoppingGetmoneyManager;
import java.util.*;
import org.apache.commons.lang.StringUtils;

import com.yebucuo.common.base.*;
import com.yebucuo.common.util.*;

import cn.org.rapid_framework.util.*;
import cn.org.rapid_framework.web.util.*;
import cn.org.rapid_framework.page.*;
import cn.org.rapid_framework.page.impl.*;

import com.kailian.glo.model.*;
import com.kailian.glo.dao.*;
import com.kailian.glo.service.*;
import com.kailian.glo.vo.query.*;

import com.yebucuo.util.Utils;

/**
 * @author  wangdapeng
 * @version 1.0
 * @since 1.0
 */


@Service("klShoppingGetmoneyManager")
@Transactional
public class KlShoppingGetmoneyManagerImpl extends BaseManager<KlShoppingGetmoney,java.lang.Long> implements IKlShoppingGetmoneyManager{

	private IKlShoppingGetmoneyDao klShoppingGetmoneyDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlShoppingGetmoneyDao(IKlShoppingGetmoneyDao dao) {
		this.klShoppingGetmoneyDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klShoppingGetmoneyDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlShoppingGetmoneyQuery query) {
		return klShoppingGetmoneyDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlShoppingGetmoney getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlShoppingGetmoney klShoppingGetmoney = this.getById(id);
		if (klShoppingGetmoney != null) {
			Map map = new HashMap();
			map.put("object", klShoppingGetmoney);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlShoppingGetmoney");
			cmsDeleteBackup.setContent(json);
			cmsDeleteBackup.setCreatetimelong(System.currentTimeMillis());
			cmsDeleteBackup.setModifytimelong(0L);
			cmsDeleteBackup.setStatus(0);
			this.cmsDeleteBackupDao.save(cmsDeleteBackup);
		}
		
		super.removeById(id);
	}
	
	/** 插入数据 */
	@Transactional
	public void save(KlShoppingGetmoney entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlShoppingGetmoney entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlShoppingGetmoney entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlShoppingGetmoney> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlShoppingGetmoney entity) {
		super.saveOrUpdate(entity);
	}


public List<KlShoppingGetmoney> queryTop(int count, String sort) {
	return this.klShoppingGetmoneyDao.queryTop(count, sort);
}

public List<KlShoppingGetmoney> queryTop(KlShoppingGetmoneyQuery query) {
	return this.klShoppingGetmoneyDao.queryTop(query);
}

public long queryCount(KlShoppingGetmoneyQuery query) {
	return this.klShoppingGetmoneyDao.queryCount(query);
}

public void updatePayStatus(long shopid, int status) {
	 this.klShoppingGetmoneyDao.updatePayStatus(shopid, status);
}

}
