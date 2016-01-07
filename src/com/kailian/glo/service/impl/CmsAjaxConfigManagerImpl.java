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
import com.kailian.glo.model.CmsAjaxConfig;

import com.kailian.glo.model.CmsAjaxConfig;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsAjaxConfigQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsAjaxConfigManager;
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


@Service("cmsAjaxConfigManager")
@Transactional
public class CmsAjaxConfigManagerImpl extends BaseManager<CmsAjaxConfig,java.lang.Long> implements ICmsAjaxConfigManager{

	private ICmsAjaxConfigDao cmsAjaxConfigDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsAjaxConfigDao(ICmsAjaxConfigDao dao) {
		this.cmsAjaxConfigDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsAjaxConfigDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsAjaxConfigQuery query) {
		return cmsAjaxConfigDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsAjaxConfig getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsAjaxConfig cmsAjaxConfig = this.getById(id);
		if (cmsAjaxConfig != null) {
			Map map = new HashMap();
			map.put("object", cmsAjaxConfig);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsAjaxConfig");
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
	public void save(CmsAjaxConfig entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsAjaxConfig entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsAjaxConfig entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsAjaxConfig> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsAjaxConfig entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsAjaxConfig> queryTop(int count, String sort) {
	return this.cmsAjaxConfigDao.queryTop(count, sort);
}

public List<CmsAjaxConfig> queryTop(CmsAjaxConfigQuery query) {
	return this.cmsAjaxConfigDao.queryTop(query);
}

public long queryCount(CmsAjaxConfigQuery query) {
	return this.cmsAjaxConfigDao.queryCount(query);
}



}
