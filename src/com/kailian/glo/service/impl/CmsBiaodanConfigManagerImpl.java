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
import com.kailian.glo.model.CmsBiaodanConfig;

import com.kailian.glo.model.CmsBiaodanConfig;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsBiaodanConfigQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsBiaodanConfigManager;
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


@Service("cmsBiaodanConfigManager")
@Transactional
public class CmsBiaodanConfigManagerImpl extends BaseManager<CmsBiaodanConfig,java.lang.Long> implements ICmsBiaodanConfigManager{

	private ICmsBiaodanConfigDao cmsBiaodanConfigDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsBiaodanConfigDao(ICmsBiaodanConfigDao dao) {
		this.cmsBiaodanConfigDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsBiaodanConfigDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsBiaodanConfigQuery query) {
		return cmsBiaodanConfigDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsBiaodanConfig getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsBiaodanConfig cmsBiaodanConfig = this.getById(id);
		if (cmsBiaodanConfig != null) {
			Map map = new HashMap();
			map.put("object", cmsBiaodanConfig);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsBiaodanConfig");
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
	public void save(CmsBiaodanConfig entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsBiaodanConfig entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsBiaodanConfig entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsBiaodanConfig> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsBiaodanConfig entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsBiaodanConfig> queryTop(int count, String sort) {
	return this.cmsBiaodanConfigDao.queryTop(count, sort);
}

public List<CmsBiaodanConfig> queryTop(CmsBiaodanConfigQuery query) {
	return this.cmsBiaodanConfigDao.queryTop(query);
}

public long queryCount(CmsBiaodanConfigQuery query) {
	return this.cmsBiaodanConfigDao.queryCount(query);
}



}
