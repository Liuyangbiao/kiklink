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
import com.kailian.glo.model.CmsStRhppeople;

import com.kailian.glo.model.CmsStRhppeople;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStRhppeopleQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsStRhppeopleManager;
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


@Service("cmsStRhppeopleManager")
@Transactional
public class CmsStRhppeopleManagerImpl extends BaseManager<CmsStRhppeople,java.lang.Long> implements ICmsStRhppeopleManager{

	private ICmsStRhppeopleDao cmsStRhppeopleDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsStRhppeopleDao(ICmsStRhppeopleDao dao) {
		this.cmsStRhppeopleDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsStRhppeopleDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsStRhppeopleQuery query) {
		return cmsStRhppeopleDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsStRhppeople getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsStRhppeople cmsStRhppeople = this.getById(id);
		if (cmsStRhppeople != null) {
			Map map = new HashMap();
			map.put("object", cmsStRhppeople);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsStRhppeople");
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
	public void save(CmsStRhppeople entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsStRhppeople entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsStRhppeople entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsStRhppeople> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsStRhppeople entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsStRhppeople> queryTop(int count, String sort) {
	return this.cmsStRhppeopleDao.queryTop(count, sort);
}

public List<CmsStRhppeople> queryTop(CmsStRhppeopleQuery query) {
	return this.cmsStRhppeopleDao.queryTop(query);
}

public long queryCount(CmsStRhppeopleQuery query) {
	return this.cmsStRhppeopleDao.queryCount(query);
}



}
