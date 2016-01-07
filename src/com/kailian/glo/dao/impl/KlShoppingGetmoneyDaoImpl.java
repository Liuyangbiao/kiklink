/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.IKlShoppingGetmoneyDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.KlShoppingGetmoney;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingGetmoneyQuery;
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




@Repository("klShoppingGetmoneyDao")
public class KlShoppingGetmoneyDaoImpl extends BaseIbatisDao<KlShoppingGetmoney,java.lang.Long> implements IKlShoppingGetmoneyDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "KlShoppingGetmoney";
	}
	
	public KlShoppingGetmoney getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(KlShoppingGetmoney entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(KlShoppingGetmoney entity){
		super.update(entity);
	}

	public boolean isUnique(KlShoppingGetmoney entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<KlShoppingGetmoney> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("KlShoppingGetmoney.findTop", map);
	}
	
	public void saveOrUpdate(KlShoppingGetmoney entity) {
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
	
	public Page findPage(KlShoppingGetmoneyQuery query) {
		return pageQuery("KlShoppingGetmoney.findPage",query);
	}
	
	
	
	public List<KlShoppingGetmoney> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("KlShoppingGetmoney.findTop", map);
	}
	
	public List<KlShoppingGetmoney> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<KlShoppingGetmoney> queryTop(KlShoppingGetmoneyQuery query) {
		String sort = (query.getSortColumns() == null ? "id" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("KlShoppingGetmoney.findTop", map);
	}
	
	public long queryCount(KlShoppingGetmoneyQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("KlShoppingGetmoney.findPage.count", map);
		return l;
	}
	
	//KlShoppingGetmoney.update.pdetail
	public void updatePayStatus(long shopid, int status) {
		Map map = new HashMap();
		map.put("shopid", shopid);
		map.put("status", status);
		
		this.getSqlMapClientTemplate().update("KlShoppingGetmoney.update.pdetail", map);
	}
	
}
