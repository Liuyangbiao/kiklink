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
import com.kailian.glo.model.CmsStSpecialtopic;

import com.kailian.glo.model.CmsStSpecialtopic;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStSpecialtopicQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsStSpecialtopicManager;
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


@Service("cmsStSpecialtopicManager")
@Transactional
public class CmsStSpecialtopicManagerImpl extends BaseManager<CmsStSpecialtopic,java.lang.Long> implements ICmsStSpecialtopicManager{

	private ICmsStSpecialtopicDao cmsStSpecialtopicDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsStSpecialtopicDao(ICmsStSpecialtopicDao dao) {
		this.cmsStSpecialtopicDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsStSpecialtopicDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsStSpecialtopicQuery query) {
		return cmsStSpecialtopicDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsStSpecialtopic getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsStSpecialtopic cmsStSpecialtopic = this.getById(id);
		if (cmsStSpecialtopic != null) {
			Map map = new HashMap();
			map.put("object", cmsStSpecialtopic);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsStSpecialtopic");
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
	public void save(CmsStSpecialtopic entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsStSpecialtopic entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsStSpecialtopic entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsStSpecialtopic> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsStSpecialtopic entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsStSpecialtopic> queryTop(int count, String sort) {
	return this.cmsStSpecialtopicDao.queryTop(count, sort);
}

public List<CmsStSpecialtopic> queryTop(CmsStSpecialtopicQuery query) {
	return this.cmsStSpecialtopicDao.queryTop(query);
}

public long queryCount(CmsStSpecialtopicQuery query) {
	return this.cmsStSpecialtopicDao.queryCount(query);
}



}
