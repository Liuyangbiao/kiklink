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
import com.kailian.glo.model.CmsIpdata;

import com.kailian.glo.model.CmsIpdata;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsIpdataQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsIpdataManager;
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


@Service("cmsIpdataManager")
@Transactional
public class CmsIpdataManagerImpl extends BaseManager<CmsIpdata,java.lang.Long> implements ICmsIpdataManager{

	private ICmsIpdataDao cmsIpdataDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsIpdataDao(ICmsIpdataDao dao) {
		this.cmsIpdataDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsIpdataDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsIpdataQuery query) {
		return cmsIpdataDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsIpdata getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsIpdata cmsIpdata = this.getById(id);
		if (cmsIpdata != null) {
			Map map = new HashMap();
			map.put("object", cmsIpdata);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsIpdata");
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
	public void save(CmsIpdata entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsIpdata entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsIpdata entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsIpdata> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsIpdata entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsIpdata> queryTop(int count, String sort) {
	return this.cmsIpdataDao.queryTop(count, sort);
}

public List<CmsIpdata> queryTop(CmsIpdataQuery query) {
	return this.cmsIpdataDao.queryTop(query);
}

public long queryCount(CmsIpdataQuery query) {
	return this.cmsIpdataDao.queryCount(query);
}



}
