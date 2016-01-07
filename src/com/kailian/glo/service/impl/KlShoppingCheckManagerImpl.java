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
import com.kailian.glo.model.KlShoppingCheck;

import com.kailian.glo.model.KlShoppingCheck;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingCheckQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlShoppingCheckManager;
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


@Service("klShoppingCheckManager")
@Transactional
public class KlShoppingCheckManagerImpl extends BaseManager<KlShoppingCheck,java.lang.Long> implements IKlShoppingCheckManager{

	private IKlShoppingCheckDao klShoppingCheckDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlShoppingCheckDao(IKlShoppingCheckDao dao) {
		this.klShoppingCheckDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klShoppingCheckDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlShoppingCheckQuery query) {
		return klShoppingCheckDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlShoppingCheck getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlShoppingCheck klShoppingCheck = this.getById(id);
		if (klShoppingCheck != null) {
			Map map = new HashMap();
			map.put("object", klShoppingCheck);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlShoppingCheck");
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
	public void save(KlShoppingCheck entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlShoppingCheck entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlShoppingCheck entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlShoppingCheck> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlShoppingCheck entity) {
		super.saveOrUpdate(entity);
	}


public List<KlShoppingCheck> queryTop(int count, String sort) {
	return this.klShoppingCheckDao.queryTop(count, sort);
}

public List<KlShoppingCheck> queryTop(KlShoppingCheckQuery query) {
	return this.klShoppingCheckDao.queryTop(query);
}

public long queryCount(KlShoppingCheckQuery query) {
	return this.klShoppingCheckDao.queryCount(query);
}



}
