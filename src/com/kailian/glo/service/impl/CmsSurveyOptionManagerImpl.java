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
import com.kailian.glo.model.CmsSurveyOption;

import com.kailian.glo.model.CmsSurveyOption;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsSurveyOptionQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsSurveyOptionManager;
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


@Service("cmsSurveyOptionManager")
@Transactional
public class CmsSurveyOptionManagerImpl extends BaseManager<CmsSurveyOption,java.lang.Long> implements ICmsSurveyOptionManager{

	private ICmsSurveyOptionDao cmsSurveyOptionDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsSurveyOptionDao(ICmsSurveyOptionDao dao) {
		this.cmsSurveyOptionDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsSurveyOptionDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsSurveyOptionQuery query) {
		return cmsSurveyOptionDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsSurveyOption getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsSurveyOption cmsSurveyOption = this.getById(id);
		if (cmsSurveyOption != null) {
			Map map = new HashMap();
			map.put("object", cmsSurveyOption);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsSurveyOption");
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
	public void save(CmsSurveyOption entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsSurveyOption entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsSurveyOption entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsSurveyOption> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsSurveyOption entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsSurveyOption> queryTop(int count, String sort) {
	return this.cmsSurveyOptionDao.queryTop(count, sort);
}

public List<CmsSurveyOption> queryTop(CmsSurveyOptionQuery query) {
	return this.cmsSurveyOptionDao.queryTop(query);
}

public long queryCount(CmsSurveyOptionQuery query) {
	return this.cmsSurveyOptionDao.queryCount(query);
}



}
