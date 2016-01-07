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
import com.kailian.glo.model.KlShoppingCoachtime;

import com.kailian.glo.model.KlShoppingCoachtime;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingCoachtimeQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlShoppingCoachtimeManager;
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


@Service("klShoppingCoachtimeManager")
@Transactional
public class KlShoppingCoachtimeManagerImpl extends BaseManager<KlShoppingCoachtime,java.lang.Long> implements IKlShoppingCoachtimeManager{

	private IKlShoppingCoachtimeDao klShoppingCoachtimeDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlShoppingCoachtimeDao(IKlShoppingCoachtimeDao dao) {
		this.klShoppingCoachtimeDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klShoppingCoachtimeDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlShoppingCoachtimeQuery query) {
		return klShoppingCoachtimeDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlShoppingCoachtime getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlShoppingCoachtime klShoppingCoachtime = this.getById(id);
		if (klShoppingCoachtime != null) {
			Map map = new HashMap();
			map.put("object", klShoppingCoachtime);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlShoppingCoachtime");
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
	public void save(KlShoppingCoachtime entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlShoppingCoachtime entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlShoppingCoachtime entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlShoppingCoachtime> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlShoppingCoachtime entity) {
		super.saveOrUpdate(entity);
	}


public List<KlShoppingCoachtime> queryTop(int count, String sort) {
	return this.klShoppingCoachtimeDao.queryTop(count, sort);
}

public List<KlShoppingCoachtime> queryTop(KlShoppingCoachtimeQuery query) {
	return this.klShoppingCoachtimeDao.queryTop(query);
}

public long queryCount(KlShoppingCoachtimeQuery query) {
	return this.klShoppingCoachtimeDao.queryCount(query);
}



}
