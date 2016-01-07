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

import com.kailian.glo.model.CmsCommonComment;
import com.kailian.glo.model.CmsStaticsFlow;

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

public interface ICmsCommonCommentManager{
	
	public Page findPage(CmsCommonCommentQuery query);

	public CmsCommonComment getById(java.lang.Long id);
	
	public List<CmsCommonComment> findAll();
	
	/** 根据id检查是否插入或是更新数据 */
	public void saveOrUpdate(CmsCommonComment entity);
	
	/** 插入数据 */
	public void save(CmsCommonComment entity);
	
	public void removeById(java.lang.Long id);
	
	public void update(CmsCommonComment entity);
	
	public boolean isUnique(CmsCommonComment entity, String uniquePropertyNames);
	
	public List<CmsCommonComment> queryTop(int count, String sort);
	
	public List<CmsCommonComment> queryTop(CmsCommonCommentQuery query);
	
	public long queryCount(CmsCommonCommentQuery query) ;
	
 public CmsCommonComment queryAvg(CmsCommonCommentQuery query) ;
	public CmsCommonComment queryAvgByTypeAndId(int type, long id) ;
}
