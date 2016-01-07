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
import com.kailian.glo.model.CmsStProductinfo;

import com.kailian.glo.model.CmsStProductinfo;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStProductinfoQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsStProductinfoManager;
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


@Service("cmsStProductinfoManager")
@Transactional
public class CmsStProductinfoManagerImpl extends BaseManager<CmsStProductinfo,java.lang.Long> implements ICmsStProductinfoManager{

	private ICmsStProductinfoDao cmsStProductinfoDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsStProductinfoDao(ICmsStProductinfoDao dao) {
		this.cmsStProductinfoDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsStProductinfoDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsStProductinfoQuery query) {
		return cmsStProductinfoDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsStProductinfo getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsStProductinfo cmsStProductinfo = this.getById(id);
		if (cmsStProductinfo != null) {
			Map map = new HashMap();
			map.put("object", cmsStProductinfo);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsStProductinfo");
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
	public void save(CmsStProductinfo entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsStProductinfo entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsStProductinfo entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsStProductinfo> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsStProductinfo entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsStProductinfo> queryTop(int count, String sort) {
	return this.cmsStProductinfoDao.queryTop(count, sort);
}

public List<CmsStProductinfo> queryTop(CmsStProductinfoQuery query) {
	return this.cmsStProductinfoDao.queryTop(query);
}

public long queryCount(CmsStProductinfoQuery query) {
	return this.cmsStProductinfoDao.queryCount(query);
}



}
