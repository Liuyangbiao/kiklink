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
import com.kailian.glo.model.CmsCommonSaved;

import com.kailian.glo.model.CmsCommonSaved;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsCommonSavedQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsCommonSavedManager;
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


@Service("cmsCommonSavedManager")
@Transactional
public class CmsCommonSavedManagerImpl extends BaseManager<CmsCommonSaved,java.lang.Long> implements ICmsCommonSavedManager{

	private ICmsCommonSavedDao cmsCommonSavedDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsCommonSavedDao(ICmsCommonSavedDao dao) {
		this.cmsCommonSavedDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsCommonSavedDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsCommonSavedQuery query) {
		return cmsCommonSavedDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsCommonSaved getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsCommonSaved cmsCommonSaved = this.getById(id);
		if (cmsCommonSaved != null) {
			Map map = new HashMap();
			map.put("object", cmsCommonSaved);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsCommonSaved");
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
	public void save(CmsCommonSaved entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsCommonSaved entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsCommonSaved entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsCommonSaved> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsCommonSaved entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsCommonSaved> queryTop(int count, String sort) {
	return this.cmsCommonSavedDao.queryTop(count, sort);
}

public List<CmsCommonSaved> queryTop(CmsCommonSavedQuery query) {
	return this.cmsCommonSavedDao.queryTop(query);
}

public long queryCount(CmsCommonSavedQuery query) {
	return this.cmsCommonSavedDao.queryCount(query);
}



}
