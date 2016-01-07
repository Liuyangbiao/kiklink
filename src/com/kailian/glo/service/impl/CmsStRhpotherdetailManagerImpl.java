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
import com.kailian.glo.model.CmsStRhpotherdetail;

import com.kailian.glo.model.CmsStRhpotherdetail;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsStRhpotherdetailQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsStRhpotherdetailManager;
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


@Service("cmsStRhpotherdetailManager")
@Transactional
public class CmsStRhpotherdetailManagerImpl extends BaseManager<CmsStRhpotherdetail,java.lang.Long> implements ICmsStRhpotherdetailManager{

	private ICmsStRhpotherdetailDao cmsStRhpotherdetailDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsStRhpotherdetailDao(ICmsStRhpotherdetailDao dao) {
		this.cmsStRhpotherdetailDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsStRhpotherdetailDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsStRhpotherdetailQuery query) {
		return cmsStRhpotherdetailDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsStRhpotherdetail getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsStRhpotherdetail cmsStRhpotherdetail = this.getById(id);
		if (cmsStRhpotherdetail != null) {
			Map map = new HashMap();
			map.put("object", cmsStRhpotherdetail);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsStRhpotherdetail");
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
	public void save(CmsStRhpotherdetail entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsStRhpotherdetail entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsStRhpotherdetail entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsStRhpotherdetail> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsStRhpotherdetail entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsStRhpotherdetail> queryTop(int count, String sort) {
	return this.cmsStRhpotherdetailDao.queryTop(count, sort);
}

public List<CmsStRhpotherdetail> queryTop(CmsStRhpotherdetailQuery query) {
	return this.cmsStRhpotherdetailDao.queryTop(query);
}

public long queryCount(CmsStRhpotherdetailQuery query) {
	return this.cmsStRhpotherdetailDao.queryCount(query);
}



}
