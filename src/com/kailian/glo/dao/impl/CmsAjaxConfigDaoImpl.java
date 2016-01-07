/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.ICmsAjaxConfigDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.CmsAjaxConfig;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsAjaxConfigQuery;
import com.yebucuo.util.Utils;

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




@Repository("cmsAjaxConfigDao")
public class CmsAjaxConfigDaoImpl extends BaseIbatisDao<CmsAjaxConfig,java.lang.Long> implements ICmsAjaxConfigDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "CmsAjaxConfig";
	}
	
	public CmsAjaxConfig getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(CmsAjaxConfig entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(CmsAjaxConfig entity){
		super.update(entity);
	}

	public boolean isUnique(CmsAjaxConfig entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<CmsAjaxConfig> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("CmsAjaxConfig.findTop", map);
	}
	
	public void saveOrUpdate(CmsAjaxConfig entity) {
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//			super.save(entity);
//		}
		if (entity.getId() == null) {
			super.save(entity);
		}
		else 
			super.update(entity);
	}
	
	public Page findPage(CmsAjaxConfigQuery query) {
		return pageQuery("CmsAjaxConfig.findPage",query);
	}
	
	
	
	public List<CmsAjaxConfig> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("CmsAjaxConfig.findTop", map);
	}
	
	public List<CmsAjaxConfig> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<CmsAjaxConfig> queryTop(CmsAjaxConfigQuery query) {
		String sort = (query.getSortColumns() == null ? "id" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("CmsAjaxConfig.findTop", map);
	}
	
	public long queryCount(CmsAjaxConfigQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("CmsAjaxConfig.findPage.count", map);
		return l;
	}
	
	
}
