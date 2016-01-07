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
import com.kailian.glo.model.CmsCommonPhoto;

import com.kailian.glo.model.CmsCommonPhoto;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsCommonPhotoQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsCommonPhotoManager;
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


@Service("cmsCommonPhotoManager")
@Transactional
public class CmsCommonPhotoManagerImpl extends BaseManager<CmsCommonPhoto,java.lang.Long> implements ICmsCommonPhotoManager{

	private ICmsCommonPhotoDao cmsCommonPhotoDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsCommonPhotoDao(ICmsCommonPhotoDao dao) {
		this.cmsCommonPhotoDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsCommonPhotoDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsCommonPhotoQuery query) {
		return cmsCommonPhotoDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsCommonPhoto getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsCommonPhoto cmsCommonPhoto = this.getById(id);
		if (cmsCommonPhoto != null) {
			Map map = new HashMap();
			map.put("object", cmsCommonPhoto);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsCommonPhoto");
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
	public void save(CmsCommonPhoto entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsCommonPhoto entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsCommonPhoto entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsCommonPhoto> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsCommonPhoto entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsCommonPhoto> queryTop(int count, String sort) {
	return this.cmsCommonPhotoDao.queryTop(count, sort);
}

public List<CmsCommonPhoto> queryTop(CmsCommonPhotoQuery query) {
	return this.cmsCommonPhotoDao.queryTop(query);
}

public long queryCount(CmsCommonPhotoQuery query) {
	return this.cmsCommonPhotoDao.queryCount(query);
}



}
