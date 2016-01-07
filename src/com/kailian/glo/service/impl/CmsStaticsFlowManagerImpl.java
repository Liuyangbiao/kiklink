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
import com.kailian.glo.model.CmsStaticsFlow;

import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStaticsFlowQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsStaticsFlowManager;
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


@Service("cmsStaticsFlowManager")
@Transactional
public class CmsStaticsFlowManagerImpl extends BaseManager<CmsStaticsFlow,java.lang.Long> implements ICmsStaticsFlowManager{

	private ICmsStaticsFlowDao cmsStaticsFlowDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsStaticsFlowDao(ICmsStaticsFlowDao dao) {
		this.cmsStaticsFlowDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsStaticsFlowDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsStaticsFlowQuery query) {
		return cmsStaticsFlowDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsStaticsFlow getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsStaticsFlow cmsStaticsFlow = this.getById(id);
		if (cmsStaticsFlow != null) {
			Map map = new HashMap();
			map.put("object", cmsStaticsFlow);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsStaticsFlow");
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
	public void save(CmsStaticsFlow entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsStaticsFlow entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsStaticsFlow entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsStaticsFlow> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsStaticsFlow entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsStaticsFlow> queryTop(int count, String sort) {
	return this.cmsStaticsFlowDao.queryTop(count, sort);
}

public List<CmsStaticsFlow> queryTop(CmsStaticsFlowQuery query) {
	return this.cmsStaticsFlowDao.queryTop(query);
}

public long queryCount(CmsStaticsFlowQuery query) {
	return this.cmsStaticsFlowDao.queryCount(query);
}



}
