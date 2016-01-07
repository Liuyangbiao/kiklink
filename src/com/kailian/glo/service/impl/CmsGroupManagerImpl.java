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
import com.kailian.glo.model.CmsGroup;

import com.kailian.glo.model.CmsGroup;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsGroupQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsGroupManager;
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


@Service("cmsGroupManager")
@Transactional
public class CmsGroupManagerImpl extends BaseManager<CmsGroup,java.lang.Long> implements ICmsGroupManager{

	private ICmsGroupDao cmsGroupDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsGroupDao(ICmsGroupDao dao) {
		this.cmsGroupDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsGroupDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsGroupQuery query) {
		return cmsGroupDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsGroup getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsGroup cmsGroup = this.getById(id);
		if (cmsGroup != null) {
			Map map = new HashMap();
			map.put("object", cmsGroup);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsGroup");
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
	public void save(CmsGroup entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsGroup entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsGroup entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsGroup> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsGroup entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsGroup> queryTop(int count, String sort) {
	return this.cmsGroupDao.queryTop(count, sort);
}

public List<CmsGroup> queryTop(CmsGroupQuery query) {
	return this.cmsGroupDao.queryTop(query);
}

public long queryCount(CmsGroupQuery query) {
	return this.cmsGroupDao.queryCount(query);
}

public CmsGroupUser addUserToGroup(CmsGroup group, CmsUserInfo user, int level) {
	CmsGroupUser gu = new CmsGroupUser();
	gu.setGroupid(group.getId());
	gu.setGroupname(group.getName());
	gu.setUserid(user.getId());
	gu.setUsername(user.getUsername());
	gu.setUserlevel(level);
	
	gu.setCreatetimelong(System.currentTimeMillis());
	return gu;
}

}
