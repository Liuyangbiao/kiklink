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
import com.kailian.glo.model.CmsDeleteBackup;

import com.kailian.glo.model.CmsDeleteBackup;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsDeleteBackupQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsDeleteBackupManager;
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


@Service("cmsDeleteBackupManager")
@Transactional
public class CmsDeleteBackupManagerImpl extends BaseManager<CmsDeleteBackup,java.lang.Long> implements ICmsDeleteBackupManager{

	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	

	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsDeleteBackupDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsDeleteBackupQuery query) {
		return cmsDeleteBackupDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsDeleteBackup getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsDeleteBackup cmsDeleteBackup = this.getById(id);

		
		super.removeById(id);
	}
	
	/** 插入数据 */
	@Transactional
	public void save(CmsDeleteBackup entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsDeleteBackup entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsDeleteBackup entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsDeleteBackup> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsDeleteBackup entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsDeleteBackup> queryTop(int count, String sort) {
	return this.cmsDeleteBackupDao.queryTop(count, sort);
}

public List<CmsDeleteBackup> queryTop(CmsDeleteBackupQuery query) {
	return this.cmsDeleteBackupDao.queryTop(query);
}

public long queryCount(CmsDeleteBackupQuery query) {
	return this.cmsDeleteBackupDao.queryCount(query);
}



}
