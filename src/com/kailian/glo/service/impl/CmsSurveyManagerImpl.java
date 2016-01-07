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
import com.kailian.glo.model.CmsSurvey;

import com.kailian.glo.model.CmsSurvey;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsSurveyQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsSurveyManager;
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


@Service("cmsSurveyManager")
@Transactional
public class CmsSurveyManagerImpl extends BaseManager<CmsSurvey,java.lang.Long> implements ICmsSurveyManager{

	private ICmsSurveyDao cmsSurveyDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsSurveyDao(ICmsSurveyDao dao) {
		this.cmsSurveyDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsSurveyDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsSurveyQuery query) {
		return cmsSurveyDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsSurvey getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsSurvey cmsSurvey = this.getById(id);
		if (cmsSurvey != null) {
			Map map = new HashMap();
			map.put("object", cmsSurvey);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsSurvey");
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
	public void save(CmsSurvey entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsSurvey entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsSurvey entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsSurvey> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsSurvey entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsSurvey> queryTop(int count, String sort) {
	return this.cmsSurveyDao.queryTop(count, sort);
}

public List<CmsSurvey> queryTop(CmsSurveyQuery query) {
	return this.cmsSurveyDao.queryTop(query);
}

public long queryCount(CmsSurveyQuery query) {
	return this.cmsSurveyDao.queryCount(query);
}



}
