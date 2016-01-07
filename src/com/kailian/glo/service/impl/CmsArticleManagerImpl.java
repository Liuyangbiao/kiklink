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
import com.kailian.glo.model.CmsArticle;

import com.kailian.glo.model.CmsArticle;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsArticleQuery;
import com.yebucuo.util.Utils;

import com.kailian.glo.service.ICmsArticleManager;
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


@Service("cmsArticleManager")
@Transactional
public class CmsArticleManagerImpl extends BaseManager<CmsArticle,java.lang.Long> implements ICmsArticleManager{

	private ICmsArticleDao cmsArticleDao;
	private ICmsDeleteBackupDao cmsDeleteBackupDao;

	/**增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,请注意大小写*/
	public void setCmsArticleDao(ICmsArticleDao dao) {
		this.cmsArticleDao = dao;
	}
	
	public void setCmsDeleteBackupDao(ICmsDeleteBackupDao dao) {
		this.cmsDeleteBackupDao = dao;
	}
	
	public EntityDao getEntityDao() {
		return (EntityDao)this.cmsArticleDao;
	}
	
	@Transactional(readOnly=true)
	public Page findPage(CmsArticleQuery query) {
		return cmsArticleDao.findPage(query);
	}
	@Transactional(readOnly=true)
	public CmsArticle getById(java.lang.Long id){
		return super.getById( id);
	}
	@Transactional
	public void removeById(java.lang.Long id){
		CmsArticle cmsArticle = this.getById(id);
		if (cmsArticle != null) {
			Map map = new HashMap();
			map.put("object", cmsArticle);
			String json = Utils.toJson(map);
			CmsDeleteBackup cmsDeleteBackup = new CmsDeleteBackup();
			cmsDeleteBackup.setTableName("CmsArticle");
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
	public void save(CmsArticle entity){
		super.save(entity);
	}
	
	/** 更新数据 */
	@Transactional
	public void update(CmsArticle entity){
		super.update(entity);
	}
	@Transactional(readOnly=true)
	public boolean isUnique(CmsArticle entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	@Transactional(readOnly=true)
	public List<CmsArticle> findAll(){
		return super.findAll();
	}
	@Transactional
	public void saveOrUpdate(CmsArticle entity) {
		super.saveOrUpdate(entity);
	}


public List<CmsArticle> queryTop(int count, String sort) {
	return this.cmsArticleDao.queryTop(count, sort);
}

public List<CmsArticle> queryTop(CmsArticleQuery query) {
	return this.cmsArticleDao.queryTop(query);
}

public long queryCount(CmsArticleQuery query) {
	return this.cmsArticleDao.queryCount(query);
}



}
