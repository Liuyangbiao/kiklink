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
import com.kailian.glo.model.CmsRequestlog;

import com.kailian.glo.model.CmsRequestlog;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsRequestlogQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsRequestlogManager;
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


@Service("cmsRequestlogManager")
@Transactional
public class CmsRequestlogManagerImpl extends BaseManager<CmsRequestlog,java.lang.Long> implements ICmsRequestlogManager{

	private ICmsRequestlogDao cmsRequestlogDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsRequestlogDao(ICmsRequestlogDao dao) {
		this.cmsRequestlogDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsRequestlogDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsRequestlogQuery query) {
		return cmsRequestlogDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsRequestlog getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsRequestlog cmsRequestlog = this.getById(id);
		if (cmsRequestlog != null) {
			Map map = new HashMap();
			map.put("object", cmsRequestlog);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsRequestlog");
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
	public void save(CmsRequestlog entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsRequestlog entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsRequestlog entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsRequestlog> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsRequestlog entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsRequestlog> queryTop(int count, String sort) {
	return this.cmsRequestlogDao.queryTop(count, sort);
}

public List<CmsRequestlog> queryTop(CmsRequestlogQuery query) {
	return this.cmsRequestlogDao.queryTop(query);
}

public long queryCount(CmsRequestlogQuery query) {
	return this.cmsRequestlogDao.queryCount(query);
}



}
