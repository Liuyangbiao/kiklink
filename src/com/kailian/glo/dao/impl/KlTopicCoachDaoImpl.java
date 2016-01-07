/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.IKlTopicCoachDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.KlTopicCoach;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlTopicCoachQuery;
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




@Repository("klTopicCoachDao")
public class KlTopicCoachDaoImpl extends BaseIbatisDao<KlTopicCoach,java.lang.Long> implements IKlTopicCoachDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "KlTopicCoach";
	}
	
	public KlTopicCoach getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(KlTopicCoach entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(KlTopicCoach entity){
		super.update(entity);
	}

	public boolean isUnique(KlTopicCoach entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<KlTopicCoach> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("KlTopicCoach.findTop", map);
	}
	
	public void saveOrUpdate(KlTopicCoach entity) {
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
	
	public Page findPage(KlTopicCoachQuery query) {
		return pageQuery("KlTopicCoach.findPage",query);
	}
	
	
	
	public List<KlTopicCoach> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("KlTopicCoach.findTop", map);
	}
	
	public List<KlTopicCoach> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<KlTopicCoach> queryTop(KlTopicCoachQuery query) {
		String sort = (query.getSortColumns() == null ? "id" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("KlTopicCoach.findTop", map);
	}
	
	public long queryCount(KlTopicCoachQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("KlTopicCoach.findPage.count", map);
		return l;
	}
	
	
}
