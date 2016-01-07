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
import com.kailian.glo.model.CmsRightTable;

import com.kailian.glo.model.CmsRightTable;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsRightTableQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsRightTableManager;
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


@Service("cmsRightTableManager")
@Transactional
public class CmsRightTableManagerImpl extends BaseManager<CmsRightTable,java.lang.Long> implements ICmsRightTableManager{

	private ICmsRightTableDao cmsRightTableDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsRightTableDao(ICmsRightTableDao dao) {
		this.cmsRightTableDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsRightTableDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsRightTableQuery query) {
		return cmsRightTableDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsRightTable getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsRightTable cmsRightTable = this.getById(id);
		if (cmsRightTable != null) {
			Map map = new HashMap();
			map.put("object", cmsRightTable);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsRightTable");
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
	public void save(CmsRightTable entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsRightTable entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsRightTable entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsRightTable> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsRightTable entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsRightTable> queryTop(int count, String sort) {
	return this.cmsRightTableDao.queryTop(count, sort);
}

public List<CmsRightTable> queryTop(CmsRightTableQuery query) {
	return this.cmsRightTableDao.queryTop(query);
}

public long queryCount(CmsRightTableQuery query) {
	return this.cmsRightTableDao.queryCount(query);
}



}
