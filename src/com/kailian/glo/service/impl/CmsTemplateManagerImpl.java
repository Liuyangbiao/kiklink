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
import com.kailian.glo.model.CmsTemplate;

import com.kailian.glo.model.CmsTemplate;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsTemplateQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsTemplateManager;
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


@Service("cmsTemplateManager")
@Transactional
public class CmsTemplateManagerImpl extends BaseManager<CmsTemplate,java.lang.Long> implements ICmsTemplateManager{

	private ICmsTemplateDao cmsTemplateDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsTemplateDao(ICmsTemplateDao dao) {
		this.cmsTemplateDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsTemplateDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsTemplateQuery query) {
		return cmsTemplateDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsTemplate getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsTemplate cmsTemplate = this.getById(id);
		if (cmsTemplate != null) {
			Map map = new HashMap();
			map.put("object", cmsTemplate);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsTemplate");
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
	public void save(CmsTemplate entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsTemplate entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsTemplate entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsTemplate> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsTemplate entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsTemplate> queryTop(int count, String sort) {
	return this.cmsTemplateDao.queryTop(count, sort);
}

public List<CmsTemplate> queryTop(CmsTemplateQuery query) {
	return this.cmsTemplateDao.queryTop(query);
}

public long queryCount(CmsTemplateQuery query) {
	return this.cmsTemplateDao.queryCount(query);
}



}
