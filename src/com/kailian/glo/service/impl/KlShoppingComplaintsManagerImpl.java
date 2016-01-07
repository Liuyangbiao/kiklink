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
import com.kailian.glo.model.KlShoppingComplaints;

import com.kailian.glo.model.KlShoppingComplaints;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingComplaintsQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.IKlShoppingComplaintsManager;
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


@Service("klShoppingComplaintsManager")
@Transactional
public class KlShoppingComplaintsManagerImpl extends BaseManager<KlShoppingComplaints,java.lang.Long> implements IKlShoppingComplaintsManager{

	private IKlShoppingComplaintsDao klShoppingComplaintsDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setKlShoppingComplaintsDao(IKlShoppingComplaintsDao dao) {
		this.klShoppingComplaintsDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.klShoppingComplaintsDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(KlShoppingComplaintsQuery query) {
		return klShoppingComplaintsDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public KlShoppingComplaints getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		KlShoppingComplaints klShoppingComplaints = this.getById(id);
		if (klShoppingComplaints != null) {
			Map map = new HashMap();
			map.put("object", klShoppingComplaints);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("KlShoppingComplaints");
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
	public void save(KlShoppingComplaints entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(KlShoppingComplaints entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(KlShoppingComplaints entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<KlShoppingComplaints> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(KlShoppingComplaints entity) {
		super.saveOrUpdate(entity);
	}


public List<KlShoppingComplaints> queryTop(int count, String sort) {
	return this.klShoppingComplaintsDao.queryTop(count, sort);
}

public List<KlShoppingComplaints> queryTop(KlShoppingComplaintsQuery query) {
	return this.klShoppingComplaintsDao.queryTop(query);
}

public long queryCount(KlShoppingComplaintsQuery query) {
	return this.klShoppingComplaintsDao.queryCount(query);
}



}
