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
import com.kailian.glo.model.CmsUserInfo;

import com.kailian.glo.model.CmsUserInfo;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsUserInfoQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsUserInfoManager;
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


@Service("cmsUserInfoManager")
@Transactional
public class CmsUserInfoManagerImpl extends BaseManager<CmsUserInfo,java.lang.Long> implements ICmsUserInfoManager{

	private ICmsUserInfoDao cmsUserInfoDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsUserInfoDao(ICmsUserInfoDao dao) {
		this.cmsUserInfoDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsUserInfoDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsUserInfoQuery query) {
		return cmsUserInfoDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsUserInfo getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsUserInfo cmsUserInfo = this.getById(id);
		if (cmsUserInfo != null) {
			Map map = new HashMap();
			map.put("object", cmsUserInfo);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsUserInfo");
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
	public void save(CmsUserInfo entity){
		float f = 0;
		entity.setMoneyleft(f);
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsUserInfo entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsUserInfo entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsUserInfo> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsUserInfo entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsUserInfo> queryTop(int count, String sort) {
	return this.cmsUserInfoDao.queryTop(count, sort);
}

public List<CmsUserInfo> queryTop(CmsUserInfoQuery query) {
	return this.cmsUserInfoDao.queryTop(query);
}

public long queryCount(CmsUserInfoQuery query) {
	return this.cmsUserInfoDao.queryCount(query);
}



}
