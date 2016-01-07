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
import com.kailian.glo.model.CmsStRhppartner;

import com.kailian.glo.model.CmsStRhppartner;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStRhppartnerQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsStRhppartnerManager;
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


@Service("cmsStRhppartnerManager")
@Transactional
public class CmsStRhppartnerManagerImpl extends BaseManager<CmsStRhppartner,java.lang.Long> implements ICmsStRhppartnerManager{

	private ICmsStRhppartnerDao cmsStRhppartnerDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsStRhppartnerDao(ICmsStRhppartnerDao dao) {
		this.cmsStRhppartnerDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsStRhppartnerDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsStRhppartnerQuery query) {
		return cmsStRhppartnerDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsStRhppartner getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsStRhppartner cmsStRhppartner = this.getById(id);
		if (cmsStRhppartner != null) {
			Map map = new HashMap();
			map.put("object", cmsStRhppartner);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsStRhppartner");
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
	public void save(CmsStRhppartner entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsStRhppartner entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsStRhppartner entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsStRhppartner> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsStRhppartner entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsStRhppartner> queryTop(int count, String sort) {
	return this.cmsStRhppartnerDao.queryTop(count, sort);
}

public List<CmsStRhppartner> queryTop(CmsStRhppartnerQuery query) {
	return this.cmsStRhppartnerDao.queryTop(query);
}

public long queryCount(CmsStRhppartnerQuery query) {
	return this.cmsStRhppartnerDao.queryCount(query);
}



}
