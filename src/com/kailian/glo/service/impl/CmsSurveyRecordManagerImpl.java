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
import com.kailian.glo.model.CmsSurveyRecord;

import com.kailian.glo.model.CmsSurveyRecord;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsSurveyRecordQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsSurveyRecordManager;
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


@Service("cmsSurveyRecordManager")
@Transactional
public class CmsSurveyRecordManagerImpl extends BaseManager<CmsSurveyRecord,java.lang.Long> implements ICmsSurveyRecordManager{

	private ICmsSurveyRecordDao cmsSurveyRecordDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsSurveyRecordDao(ICmsSurveyRecordDao dao) {
		this.cmsSurveyRecordDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsSurveyRecordDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsSurveyRecordQuery query) {
		return cmsSurveyRecordDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsSurveyRecord getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsSurveyRecord cmsSurveyRecord = this.getById(id);
		if (cmsSurveyRecord != null) {
			Map map = new HashMap();
			map.put("object", cmsSurveyRecord);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsSurveyRecord");
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
	public void save(CmsSurveyRecord entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsSurveyRecord entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsSurveyRecord entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsSurveyRecord> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsSurveyRecord entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsSurveyRecord> queryTop(int count, String sort) {
	return this.cmsSurveyRecordDao.queryTop(count, sort);
}

public List<CmsSurveyRecord> queryTop(CmsSurveyRecordQuery query) {
	return this.cmsSurveyRecordDao.queryTop(query);
}

public long queryCount(CmsSurveyRecordQuery query) {
	return this.cmsSurveyRecordDao.queryCount(query);
}



}
