/*

 */

package com.kailian.glo.model;

import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

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


public class CmsCommonPhoto extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsCommonPhoto";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_OWNNERID = "ownnerid";
	public static final String ALIAS_OWNNERTYPE = "ownnertype";
	public static final String ALIAS_TARGET_TYPE = "targetType";
	public static final String ALIAS_TARGET_ID = "targetId";
	public static final String ALIAS_RESOURCETYPE = "resourcetype";
	public static final String ALIAS_CATEGORY = "category";
	public static final String ALIAS_RESOURCE = "resource";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_COMMENT = "comment";
	public static final String ALIAS_QUANZHONG = "quanzhong";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long ownnerid;
	
	private java.lang.Integer ownnertype;
	
	private java.lang.Integer targetType;
	
	private java.lang.Long targetId;
	
	private java.lang.Integer resourcetype;
	
	private java.lang.Long category;
	@Length(max=100)
	private java.lang.String resource;
	@Length(max=100)
	private java.lang.String name;
	@Length(max=65535)
	private java.lang.String comment;
	
	private java.lang.Integer quanzhong;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsCommonPhoto(){
	}

	public CmsCommonPhoto(
		java.lang.Long id
	){
		this.id = id;
	}

	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getId() {
		return this.id;
	}
	public void setOwnnerid(java.lang.Long value) {
		this.ownnerid = value;
	}
	
	public java.lang.Long getOwnnerid() {
		return this.ownnerid;
	}
	public void setOwnnertype(java.lang.Integer value) {
		this.ownnertype = value;
	}
	
	public java.lang.Integer getOwnnertype() {
		return this.ownnertype;
	}
	public void setTargetType(java.lang.Integer value) {
		this.targetType = value;
	}
	
	public java.lang.Integer getTargetType() {
		return this.targetType;
	}
	public void setTargetId(java.lang.Long value) {
		this.targetId = value;
	}
	
	public java.lang.Long getTargetId() {
		return this.targetId;
	}
	public void setResourcetype(java.lang.Integer value) {
		this.resourcetype = value;
	}
	
	public java.lang.Integer getResourcetype() {
		return this.resourcetype;
	}
	public void setCategory(java.lang.Long value) {
		this.category = value;
	}
	
	public java.lang.Long getCategory() {
		return this.category;
	}
	public void setResource(java.lang.String value) {
		this.resource = value;
	}
	
	public java.lang.String getResource() {
		return this.resource;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setComment(java.lang.String value) {
		this.comment = value;
	}
	
	public java.lang.String getComment() {
		return this.comment;
	}
	public void setQuanzhong(java.lang.Integer value) {
		this.quanzhong = value;
	}
	
	public java.lang.Integer getQuanzhong() {
		return this.quanzhong;
	}
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	public void setAddition(java.lang.String value) {
		this.addition = value;
	}
	
	public java.lang.String getAddition() {
		return this.addition;
	}
	public void setCreatetimelong(java.lang.Long value) {
		this.createtimelong = value;
	}
	
	public java.lang.Long getCreatetimelong() {
		return this.createtimelong;
	}
	public void setModifytimelong(java.lang.Long value) {
		this.modifytimelong = value;
	}
	
	public java.lang.Long getModifytimelong() {
		return this.modifytimelong;
	}
	public void setCreateuser(java.lang.Long value) {
		this.createuser = value;
	}
	
	public java.lang.Long getCreateuser() {
		return this.createuser;
	}
	public void setModifyuser(java.lang.Long value) {
		this.modifyuser = value;
	}
	
	public java.lang.Long getModifyuser() {
		return this.modifyuser;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Ownnerid",getOwnnerid())
			.append("Ownnertype",getOwnnertype())
			.append("TargetType",getTargetType())
			.append("TargetId",getTargetId())
			.append("Resourcetype",getResourcetype())
			.append("Category",getCategory())
			.append("Resource",getResource())
			.append("Name",getName())
			.append("Comment",getComment())
			.append("Quanzhong",getQuanzhong())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsCommonPhoto == false) return false;
		if(this == obj) return true;
		CmsCommonPhoto other = (CmsCommonPhoto)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

