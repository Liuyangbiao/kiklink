/*

 */

package com.kailian.glo.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kailian.glo.model.CmsGroup;
import com.kailian.glo.model.CmsGroupUser;
import com.kailian.glo.model.CmsStaticsFlow;
import com.kailian.glo.model.CmsUserInfo;

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

public interface ICmsGroupManager{
	
	public Page findPage(CmsGroupQuery query);

	public CmsGroup getById(java.lang.Long id);
	
	public List<CmsGroup> findAll();
	
	/** 根据id检查是否插入或是更新数据 */
	public void saveOrUpdate(CmsGroup entity);
	
	/** 插入数据 */
	public void save(CmsGroup entity);
	
	public void removeById(java.lang.Long id);
	
	public void update(CmsGroup entity);
	
	public boolean isUnique(CmsGroup entity, String uniquePropertyNames);
	
	public List<CmsGroup> queryTop(int count, String sort);
	
	public List<CmsGroup> queryTop(CmsGroupQuery query);
	
	public long queryCount(CmsGroupQuery query) ;
	
	public CmsGroupUser addUserToGroup(CmsGroup group, CmsUserInfo user, int level);
}
