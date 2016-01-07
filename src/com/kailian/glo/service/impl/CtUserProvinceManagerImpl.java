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
import com.kailian.glo.model.CtUserProvince;

import com.kailian.glo.model.CtUserProvince;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CtUserProvinceQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICtUserProvinceManager;
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


@Service("ctUserProvinceManager")
@Transactional
public class CtUserProvinceManagerImpl extends BaseManager<CtUserProvince,java.lang.Long> implements ICtUserProvinceManager{

	private ICtUserProvinceDao ctUserProvinceDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCtUserProvinceDao(ICtUserProvinceDao dao) {
		this.ctUserProvinceDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.ctUserProvinceDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CtUserProvinceQuery query) {
		return ctUserProvinceDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CtUserProvince getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CtUserProvince ctUserProvince = this.getById(id);
		if (ctUserProvince != null) {
			Map map = new HashMap();
			map.put("object", ctUserProvince);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CtUserProvince");
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
	public void save(CtUserProvince entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CtUserProvince entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CtUserProvince entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CtUserProvince> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CtUserProvince entity) {
		super.saveOrUpdate(entity);
	}


public List<CtUserProvince> queryTop(int count, String sort) {
	return this.ctUserProvinceDao.queryTop(count, sort);
}

public List<CtUserProvince> queryTop(CtUserProvinceQuery query) {
	return this.ctUserProvinceDao.queryTop(query);
}

public long queryCount(CtUserProvinceQuery query) {
	return this.ctUserProvinceDao.queryCount(query);
}



}
