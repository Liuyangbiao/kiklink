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
import com.kailian.glo.model.CmsActivityUser;

import com.kailian.glo.model.CmsActivityUser;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsActivityUserQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsActivityUserManager;
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


@Service("cmsActivityUserManager")
@Transactional
public class CmsActivityUserManagerImpl extends BaseManager<CmsActivityUser,java.lang.Long> implements ICmsActivityUserManager{

	private ICmsActivityUserDao cmsActivityUserDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsActivityUserDao(ICmsActivityUserDao dao) {
		this.cmsActivityUserDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsActivityUserDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsActivityUserQuery query) {
		return cmsActivityUserDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsActivityUser getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsActivityUser cmsActivityUser = this.getById(id);
		if (cmsActivityUser != null) {
			Map map = new HashMap();
			map.put("object", cmsActivityUser);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsActivityUser");
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
	public void save(CmsActivityUser entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsActivityUser entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsActivityUser entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsActivityUser> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsActivityUser entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsActivityUser> queryTop(int count, String sort) {
	return this.cmsActivityUserDao.queryTop(count, sort);
}

public List<CmsActivityUser> queryTop(CmsActivityUserQuery query) {
	return this.cmsActivityUserDao.queryTop(query);
}

public long queryCount(CmsActivityUserQuery query) {
	return this.cmsActivityUserDao.queryCount(query);
}



}
