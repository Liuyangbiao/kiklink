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
import com.kailian.glo.model.CmsAdminuser;

import com.kailian.glo.model.CmsAdminuser;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsAdminuserQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsAdminuserManager;
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


@Service("cmsAdminuserManager")
@Transactional
public class CmsAdminuserManagerImpl extends BaseManager<CmsAdminuser,java.lang.Long> implements ICmsAdminuserManager{

	private ICmsAdminuserDao cmsAdminuserDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsAdminuserDao(ICmsAdminuserDao dao) {
		this.cmsAdminuserDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsAdminuserDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsAdminuserQuery query) {
		return cmsAdminuserDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsAdminuser getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsAdminuser cmsAdminuser = this.getById(id);
		if (cmsAdminuser != null) {
			Map map = new HashMap();
			map.put("object", cmsAdminuser);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsAdminuser");
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
	public void save(CmsAdminuser entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsAdminuser entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsAdminuser entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsAdminuser> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsAdminuser entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsAdminuser> queryTop(int count, String sort) {
	return this.cmsAdminuserDao.queryTop(count, sort);
}

public List<CmsAdminuser> queryTop(CmsAdminuserQuery query) {
	return this.cmsAdminuserDao.queryTop(query);
}

public long queryCount(CmsAdminuserQuery query) {
	return this.cmsAdminuserDao.queryCount(query);
}

public void updateGroupUserCount(java.lang.Long id) {
	this.cmsAdminuserDao.updateGroupUserCount(id);
}

}
