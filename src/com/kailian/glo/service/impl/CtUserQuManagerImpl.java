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
import com.kailian.glo.model.CtUserQu;

import com.kailian.glo.model.CtUserQu;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CtUserQuQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICtUserQuManager;
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


@Service("ctUserQuManager")
@Transactional
public class CtUserQuManagerImpl extends BaseManager<CtUserQu,java.lang.Long> implements ICtUserQuManager{

	private ICtUserQuDao ctUserQuDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCtUserQuDao(ICtUserQuDao dao) {
		this.ctUserQuDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.ctUserQuDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CtUserQuQuery query) {
		return ctUserQuDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CtUserQu getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CtUserQu ctUserQu = this.getById(id);
		if (ctUserQu != null) {
			Map map = new HashMap();
			map.put("object", ctUserQu);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CtUserQu");
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
	public void save(CtUserQu entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CtUserQu entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CtUserQu entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CtUserQu> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CtUserQu entity) {
		super.saveOrUpdate(entity);
	}


public List<CtUserQu> queryTop(int count, String sort) {
	return this.ctUserQuDao.queryTop(count, sort);
}

public List<CtUserQu> queryTop(CtUserQuQuery query) {
	return this.ctUserQuDao.queryTop(query);
}

public long queryCount(CtUserQuQuery query) {
	return this.ctUserQuDao.queryCount(query);
}



}
