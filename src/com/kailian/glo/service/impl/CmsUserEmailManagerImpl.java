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
import com.kailian.glo.model.CmsUserEmail;

import com.kailian.glo.model.CmsUserEmail;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsUserEmailQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsUserEmailManager;
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


@Service("cmsUserEmailManager")
@Transactional
public class CmsUserEmailManagerImpl extends BaseManager<CmsUserEmail,java.lang.Long> implements ICmsUserEmailManager{

	private ICmsUserEmailDao cmsUserEmailDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsUserEmailDao(ICmsUserEmailDao dao) {
		this.cmsUserEmailDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsUserEmailDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsUserEmailQuery query) {
		return cmsUserEmailDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsUserEmail getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsUserEmail cmsUserEmail = this.getById(id);
		if (cmsUserEmail != null) {
			Map map = new HashMap();
			map.put("object", cmsUserEmail);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsUserEmail");
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
	public void save(CmsUserEmail entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsUserEmail entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsUserEmail entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsUserEmail> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsUserEmail entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsUserEmail> queryTop(int count, String sort) {
	return this.cmsUserEmailDao.queryTop(count, sort);
}

public List<CmsUserEmail> queryTop(CmsUserEmailQuery query) {
	return this.cmsUserEmailDao.queryTop(query);
}

public long queryCount(CmsUserEmailQuery query) {
	return this.cmsUserEmailDao.queryCount(query);
}



}
