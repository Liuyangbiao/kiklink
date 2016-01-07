/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.ICmsCommonPointsDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.CmsCommonPoints;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.CmsCommonPointsQuery;
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




@Repository("cmsCommonPointsDao")
public class CmsCommonPointsDaoImpl extends BaseIbatisDao<CmsCommonPoints,java.lang.Long> implements ICmsCommonPointsDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "CmsCommonPoints";
	}
	
	public CmsCommonPoints getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(CmsCommonPoints entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(CmsCommonPoints entity){
		super.update(entity);
	}

	public boolean isUnique(CmsCommonPoints entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<CmsCommonPoints> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("CmsCommonPoints.findTop", map);
	}
	
	public void saveOrUpdate(CmsCommonPoints entity) {
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
	
	public Page findPage(CmsCommonPointsQuery query) {
		return pageQuery("CmsCommonPoints.findPage",query);
	}
	
	
	
	public List<CmsCommonPoints> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("CmsCommonPoints.findTop", map);
	}
	
	public List<CmsCommonPoints> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<CmsCommonPoints> queryTop(CmsCommonPointsQuery query) {
		String sort = (query.getSortColumns() == null ? "id" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("CmsCommonPoints.findTop", map);
	}
	
	public long queryCount(CmsCommonPointsQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("CmsCommonPoints.findPage.count", map);
		return l;
	}
	
	public Map selectSql(String sql) {
		Map map = new HashMap();
		map.put("sql", sql);
		return (Map) this.getSqlMapClientTemplate().queryForObject("selectBySql", map);
	}
	
	public void updateSql(String sql) {
		Map map = new HashMap();
		map.put("sql", sql);
		this.getSqlMapClientTemplate().update("updateBySql", map);
	}
	
	
}
