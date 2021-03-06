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
import com.kailian.glo.model.CmsInputTable;

import com.kailian.glo.model.CmsInputTable;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsInputTableQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsInputTableManager;
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


@Service("cmsInputTableManager")
@Transactional
public class CmsInputTableManagerImpl extends BaseManager<CmsInputTable,java.lang.Long> implements ICmsInputTableManager{

	private ICmsInputTableDao cmsInputTableDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsInputTableDao(ICmsInputTableDao dao) {
		this.cmsInputTableDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsInputTableDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsInputTableQuery query) {
		return cmsInputTableDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsInputTable getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsInputTable cmsInputTable = this.getById(id);
		if (cmsInputTable != null) {
			Map map = new HashMap();
			map.put("object", cmsInputTable);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsInputTable");
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
	public void save(CmsInputTable entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsInputTable entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsInputTable entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsInputTable> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsInputTable entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsInputTable> queryTop(int count, String sort) {
	return this.cmsInputTableDao.queryTop(count, sort);
}

public List<CmsInputTable> queryTop(CmsInputTableQuery query) {
	return this.cmsInputTableDao.queryTop(query);
}

public long queryCount(CmsInputTableQuery query) {
	return this.cmsInputTableDao.queryCount(query);
}



}
