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
import com.kailian.glo.model.CmsCommonPoints;
import com.kailian.glo.model.CmsCommonPoints;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsCommonPointsQuery;
import com.yebucuo.util.Utils;
import com.kailian.glo.service.ICmsCommonPointsManager;

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


@Service("cmsCommonPointsManager")
@Transactional
public class CmsCommonPointsManagerImpl extends BaseManager<CmsCommonPoints,java.lang.Long> implements ICmsCommonPointsManager{

	private ICmsCommonPointsDao cmsCommonPointsDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsCommonPointsDao(ICmsCommonPointsDao dao) {
		this.cmsCommonPointsDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsCommonPointsDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsCommonPointsQuery query) {
		return cmsCommonPointsDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsCommonPoints getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsCommonPoints cmsCommonPoints = this.getById(id);
		if (cmsCommonPoints != null) {
			Map map = new HashMap();
			map.put("object", cmsCommonPoints);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsCommonPoints");
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
	public void save(CmsCommonPoints entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsCommonPoints entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsCommonPoints entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsCommonPoints> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsCommonPoints entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsCommonPoints> queryTop(int count, String sort) {
	return this.cmsCommonPointsDao.queryTop(count, sort);
}

public List<CmsCommonPoints> queryTop(CmsCommonPointsQuery query) {
	return this.cmsCommonPointsDao.queryTop(query);
}

public long queryCount(CmsCommonPointsQuery query) {
	return this.cmsCommonPointsDao.queryCount(query);
}


public Map selectSql(String sql) {
	return this.cmsCommonPointsDao.selectSql(sql);
}

public void updateSql(String sql) {
	 this.cmsCommonPointsDao.updateSql(sql);
}


}
