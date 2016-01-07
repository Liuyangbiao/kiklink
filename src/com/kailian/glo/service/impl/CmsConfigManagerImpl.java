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
import com.kailian.glo.model.CmsConfig;

import com.kailian.glo.model.CmsConfig;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsConfigQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsConfigManager;
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


@Service("cmsConfigManager")
@Transactional
public class CmsConfigManagerImpl extends BaseManager<CmsConfig,java.lang.Long> implements ICmsConfigManager{

	private ICmsConfigDao cmsConfigDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsConfigDao(ICmsConfigDao dao) {
		this.cmsConfigDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsConfigDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsConfigQuery query) {
		return cmsConfigDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsConfig getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsConfig cmsConfig = this.getById(id);
		if (cmsConfig != null) {
			Map map = new HashMap();
			map.put("object", cmsConfig);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsConfig");
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
	public void save(CmsConfig entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsConfig entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsConfig entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsConfig> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsConfig entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsConfig> queryTop(int count, String sort) {
	return this.cmsConfigDao.queryTop(count, sort);
}

public List<CmsConfig> queryTop(CmsConfigQuery query) {
	return this.cmsConfigDao.queryTop(query);
}

public long queryCount(CmsConfigQuery query) {
	return this.cmsConfigDao.queryCount(query);
}



}
