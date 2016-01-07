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
import com.kailian.glo.model.CmsStRehuopai;

import com.kailian.glo.model.CmsStRehuopai;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStRehuopaiQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsStRehuopaiManager;
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


@Service("cmsStRehuopaiManager")
@Transactional
public class CmsStRehuopaiManagerImpl extends BaseManager<CmsStRehuopai,java.lang.Long> implements ICmsStRehuopaiManager{

	private ICmsStRehuopaiDao cmsStRehuopaiDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsStRehuopaiDao(ICmsStRehuopaiDao dao) {
		this.cmsStRehuopaiDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsStRehuopaiDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsStRehuopaiQuery query) {
		return cmsStRehuopaiDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsStRehuopai getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsStRehuopai cmsStRehuopai = this.getById(id);
		if (cmsStRehuopai != null) {
			Map map = new HashMap();
			map.put("object", cmsStRehuopai);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsStRehuopai");
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
	public void save(CmsStRehuopai entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsStRehuopai entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsStRehuopai entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsStRehuopai> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsStRehuopai entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsStRehuopai> queryTop(int count, String sort) {
	return this.cmsStRehuopaiDao.queryTop(count, sort);
}

public List<CmsStRehuopai> queryTop(CmsStRehuopaiQuery query) {
	return this.cmsStRehuopaiDao.queryTop(query);
}

public long queryCount(CmsStRehuopaiQuery query) {
	return this.cmsStRehuopaiDao.queryCount(query);
}



}
