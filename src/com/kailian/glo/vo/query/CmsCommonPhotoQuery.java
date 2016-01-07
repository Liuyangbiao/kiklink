/*

 */

package com.kailian.glo.vo.query;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.io.Serializable;

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


public class CmsCommonPhotoQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** ownnerid */
	private java.lang.Long ownnerid;
	/** ownnertype */
	private java.lang.Integer ownnertype;
	/** targetType */
	private java.lang.Integer targetType;
	/** targetId */
	private java.lang.Long targetId;
	/** resourcetype */
	private java.lang.Integer resourcetype;
	/** category */
	private java.lang.Long category;
	/** resource */
	private java.lang.String resource;
	/** name */
	private java.lang.String name;
	/** comment */
	private java.lang.String comment;
	/** quanzhong */
	private java.lang.Integer quanzhong;
	/** status */
	private java.lang.Integer status;
	/** addition */
	private java.lang.String addition;
	/** createtimelong */
	private java.lang.Long createtimelong;
	/** modifytimelong */
	private java.lang.Long modifytimelong;
	/** createuser */
	private java.lang.Long createuser;
	/** modifyuser */
	private java.lang.Long modifyuser;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getOwnnerid() {
		return this.ownnerid;
	}
	
	public void setOwnnerid(java.lang.Long value) {
		this.ownnerid = value;
	}
	
	public java.lang.Integer getOwnnertype() {
		return this.ownnertype;
	}
	
	public void setOwnnertype(java.lang.Integer value) {
		this.ownnertype = value;
	}
	
	public java.lang.Integer getTargetType() {
		return this.targetType;
	}
	
	public void setTargetType(java.lang.Integer value) {
		this.targetType = value;
	}
	
	public java.lang.Long getTargetId() {
		return this.targetId;
	}
	
	public void setTargetId(java.lang.Long value) {
		this.targetId = value;
	}
	
	public java.lang.Integer getResourcetype() {
		return this.resourcetype;
	}
	
	public void setResourcetype(java.lang.Integer value) {
		this.resourcetype = value;
	}
	
	public java.lang.Long getCategory() {
		return this.category;
	}
	
	public void setCategory(java.lang.Long value) {
		this.category = value;
	}
	
	public java.lang.String getResource() {
		return this.resource;
	}
	
	public void setResource(java.lang.String value) {
		this.resource = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getComment() {
		return this.comment;
	}
	
	public void setComment(java.lang.String value) {
		this.comment = value;
	}
	
	public java.lang.Integer getQuanzhong() {
		return this.quanzhong;
	}
	
	public void setQuanzhong(java.lang.Integer value) {
		this.quanzhong = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.String getAddition() {
		return this.addition;
	}
	
	public void setAddition(java.lang.String value) {
		this.addition = value;
	}
	
	public java.lang.Long getCreatetimelong() {
		return this.createtimelong;
	}
	
	public void setCreatetimelong(java.lang.Long value) {
		this.createtimelong = value;
	}
	
	public java.lang.Long getModifytimelong() {
		return this.modifytimelong;
	}
	
	public void setModifytimelong(java.lang.Long value) {
		this.modifytimelong = value;
	}
	
	public java.lang.Long getCreateuser() {
		return this.createuser;
	}
	
	public void setCreateuser(java.lang.Long value) {
		this.createuser = value;
	}
	
	public java.lang.Long getModifyuser() {
		return this.modifyuser;
	}
	
	public void setModifyuser(java.lang.Long value) {
		this.modifyuser = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

