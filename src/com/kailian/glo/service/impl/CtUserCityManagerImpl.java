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
import com.kailian.glo.model.CtUserCity;

import com.kailian.glo.model.CtUserCity;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CtUserCityQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICtUserCityManager;
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


@Service("ctUserCityManager")
@Transactional
public class CtUserCityManagerImpl extends BaseManager<CtUserCity,java.lang.Long> implements ICtUserCityManager{

	private ICtUserCityDao ctUserCityDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCtUserCityDao(ICtUserCityDao dao) {
		this.ctUserCityDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.ctUserCityDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CtUserCityQuery query) {
		return ctUserCityDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CtUserCity getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CtUserCity ctUserCity = this.getById(id);
		if (ctUserCity != null) {
			Map map = new HashMap();
			map.put("object", ctUserCity);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CtUserCity");
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
	public void save(CtUserCity entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CtUserCity entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CtUserCity entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CtUserCity> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CtUserCity entity) {
		super.saveOrUpdate(entity);
	}


public List<CtUserCity> queryTop(int count, String sort) {
	return this.ctUserCityDao.queryTop(count, sort);
}

public List<CtUserCity> queryTop(CtUserCityQuery query) {
	return this.ctUserCityDao.queryTop(query);
}

public long queryCount(CtUserCityQuery query) {
	return this.ctUserCityDao.queryCount(query);
}



}
