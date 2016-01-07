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
import com.kailian.glo.model.CmsGroupCommentetc;

import com.kailian.glo.model.CmsGroupCommentetc;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsGroupCommentetcQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsGroupCommentetcManager;
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


@Service("cmsGroupCommentetcManager")
@Transactional
public class CmsGroupCommentetcManagerImpl extends BaseManager<CmsGroupCommentetc,java.lang.Long> implements ICmsGroupCommentetcManager{

	private ICmsGroupCommentetcDao cmsGroupCommentetcDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsGroupCommentetcDao(ICmsGroupCommentetcDao dao) {
		this.cmsGroupCommentetcDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsGroupCommentetcDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsGroupCommentetcQuery query) {
		return cmsGroupCommentetcDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsGroupCommentetc getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsGroupCommentetc cmsGroupCommentetc = this.getById(id);
		if (cmsGroupCommentetc != null) {
			Map map = new HashMap();
			map.put("object", cmsGroupCommentetc);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsGroupCommentetc");
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
	public void save(CmsGroupCommentetc entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsGroupCommentetc entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsGroupCommentetc entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsGroupCommentetc> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsGroupCommentetc entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsGroupCommentetc> queryTop(int count, String sort) {
	return this.cmsGroupCommentetcDao.queryTop(count, sort);
}

public List<CmsGroupCommentetc> queryTop(CmsGroupCommentetcQuery query) {
	return this.cmsGroupCommentetcDao.queryTop(query);
}

public long queryCount(CmsGroupCommentetcQuery query) {
	return this.cmsGroupCommentetcDao.queryCount(query);
}



}
