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
import com.kailian.glo.model.CtPhoto;

import com.kailian.glo.model.CtPhoto;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CtPhotoQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICtPhotoManager;
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


@Service("ctPhotoManager")
@Transactional
public class CtPhotoManagerImpl extends BaseManager<CtPhoto,java.lang.Long> implements ICtPhotoManager{

	private ICtPhotoDao ctPhotoDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCtPhotoDao(ICtPhotoDao dao) {
		this.ctPhotoDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.ctPhotoDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CtPhotoQuery query) {
		return ctPhotoDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CtPhoto getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CtPhoto ctPhoto = this.getById(id);
		if (ctPhoto != null) {
			Map map = new HashMap();
			map.put("object", ctPhoto);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CtPhoto");
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
	public void save(CtPhoto entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CtPhoto entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CtPhoto entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CtPhoto> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CtPhoto entity) {
		super.saveOrUpdate(entity);
	}


public List<CtPhoto> queryTop(int count, String sort) {
	return this.ctPhotoDao.queryTop(count, sort);
}

public List<CtPhoto> queryTop(CtPhotoQuery query) {
	return this.ctPhotoDao.queryTop(query);
}

public long queryCount(CtPhotoQuery query) {
	return this.ctPhotoDao.queryCount(query);
}



}
