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
import com.kailian.glo.model.CmsBiaodan;

import com.kailian.glo.model.CmsBiaodan;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsBiaodanQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsBiaodanManager;
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


@Service("cmsBiaodanManager")
@Transactional
public class CmsBiaodanManagerImpl extends BaseManager<CmsBiaodan,java.lang.Long> implements ICmsBiaodanManager{

	private ICmsBiaodanDao cmsBiaodanDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsBiaodanDao(ICmsBiaodanDao dao) {
		this.cmsBiaodanDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsBiaodanDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsBiaodanQuery query) {
		return cmsBiaodanDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsBiaodan getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsBiaodan cmsBiaodan = this.getById(id);
		if (cmsBiaodan != null) {
			Map map = new HashMap();
			map.put("object", cmsBiaodan);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsBiaodan");
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
	public void save(CmsBiaodan entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsBiaodan entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsBiaodan entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsBiaodan> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsBiaodan entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsBiaodan> queryTop(int count, String sort) {
	return this.cmsBiaodanDao.queryTop(count, sort);
}

public List<CmsBiaodan> queryTop(CmsBiaodanQuery query) {
	return this.cmsBiaodanDao.queryTop(query);
}

public long queryCount(CmsBiaodanQuery query) {
	return this.cmsBiaodanDao.queryCount(query);
}



}
