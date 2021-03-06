/*

 */

package com.kailian.glo.dao.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kailian.glo.dao.IKlShoppingCouponDao;

import org.springframework.stereotype.Repository;

import com.kailian.glo.model.KlShoppingCoupon;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.vo.query.KlShoppingCouponQuery;
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




@Repository("klShoppingCouponDao")
public class KlShoppingCouponDaoImpl extends BaseIbatisDao<KlShoppingCoupon,java.lang.Long> implements IKlShoppingCouponDao{
	
	@Override
	public String getIbatisSqlMapNamespace() {
		return "KlShoppingCoupon";
	}
	
	public KlShoppingCoupon getById(java.lang.Long id){
		return super.getById( id);
	}
	
	public void deleteById(java.lang.Long id){
		super.deleteById(id);
	}
	
	/** 插入数据 */
	public void save(KlShoppingCoupon entity){
//		if(StringUtils.isEmpty(entity.getId())) {
//			entity.setId(IdGenerator.genUUIDStr());
//		}
		if (entity.getId() == null) {
			
		}
		super.save(entity);
	}
	
	/** 更新数据 */
	public void update(KlShoppingCoupon entity){
		super.update(entity);
	}

	public boolean isUnique(KlShoppingCoupon entity, String uniquePropertyNames){
		return super.isUnique( entity, uniquePropertyNames);
	}
	
	public List<KlShoppingCoupon> findAll(){
		//return super.findAll();
		Map map = new HashMap();
		map.put("maxCount", Integer.MAX_VALUE );
		
		return this.queryforList("KlShoppingCoupon.findTop", map);
	}
	
	public void saveOrUpdate(KlShoppingCoupon entity) {
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
	
	public Page findPage(KlShoppingCouponQuery query) {
		return pageQuery("KlShoppingCoupon.findPage",query);
	}
	
	
	
	public List<KlShoppingCoupon> queryTop(int count, String sortBy) {
		String sort = (sortBy == null ? "id" : sortBy);
		Map map = new HashMap();
		map.put("sortColumns", sortBy);
		map.put("maxCount", count );
		
		return this.queryforList("KlShoppingCoupon.findTop", map);
	}
	
	public List<KlShoppingCoupon> queryforList(String sqlName,Map paraMap) {
		return this.getSqlMapClientTemplate().queryForList(sqlName,paraMap);
	}
	
	
	public List<KlShoppingCoupon> queryTop(KlShoppingCouponQuery query) {
		String sort = (query.getSortColumns() == null ? "id" : query.getSortColumns());
		Map map = Utils.transBean2Map(query);
		map.put("sortColumns", sort);
		map.put("maxCount", query.getPageSize() );
		
		return this.queryforList("KlShoppingCoupon.findTop", map);
	}
	
	public long queryCount(KlShoppingCouponQuery query) {
		Map map = Utils.transBean2Map(query);
		Long l = (Long) this.getSqlMapClientTemplate().queryForObject("KlShoppingCoupon.findPage.count", map);
		return l;
	}
	
	
}
