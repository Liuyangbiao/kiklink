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
import com.kailian.glo.model.CmsGroupUser;

import com.kailian.glo.model.CmsGroupUser;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsGroupUserQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsGroupUserManager;
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


@Service("cmsGroupUserManager")
@Transactional
public class CmsGroupUserManagerImpl extends BaseManager<CmsGroupUser,java.lang.Long> implements ICmsGroupUserManager{

	private ICmsGroupUserDao cmsGroupUserDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsGroupUserDao(ICmsGroupUserDao dao) {
		this.cmsGroupUserDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsGroupUserDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsGroupUserQuery query) {
		return cmsGroupUserDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsGroupUser getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsGroupUser cmsGroupUser = this.getById(id);
		if (cmsGroupUser != null) {
			Map map = new HashMap();
			map.put("object", cmsGroupUser);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsGroupUser");
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
	public void save(CmsGroupUser entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsGroupUser entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsGroupUser entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsGroupUser> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsGroupUser entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsGroupUser> queryTop(int count, String sort) {
	return this.cmsGroupUserDao.queryTop(count, sort);
}

public List<CmsGroupUser> queryTop(CmsGroupUserQuery query) {
	return this.cmsGroupUserDao.queryTop(query);
}

public long queryCount(CmsGroupUserQuery query) {
	return this.cmsGroupUserDao.queryCount(query);
}



}
