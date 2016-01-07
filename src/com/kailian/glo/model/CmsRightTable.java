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


public class CmsRightTable extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsRightTable";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_CLASS_NAME = "className";
	public static final String ALIAS_METHOD_NAME = "methodName";
	public static final String ALIAS_CLASS_COMMENT = "classComment";
	public static final String ALIAS_METHOD_COMMENT = "methodComment";
	public static final String ALIAS_SHOW_IN_LIST = "showInList";
	public static final String ALIAS_LOG_IN_DATABASE = "logInDatabase";
	public static final String ALIAS_VISIT_RIGHT_LEVEL = "visitRightLevel";
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
	@Length(max=100)
	private java.lang.String className;
	@Length(max=100)
	private java.lang.String methodName;
	@Length(max=200)
	private java.lang.String classComment;
	@Length(max=200)
	private java.lang.String methodComment;
	
	private java.lang.Integer showInList;
	
	private java.lang.Integer logInDatabase;
	
	private java.lang.Integer visitRightLevel;
	
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

	public CmsRightTable(){
	}

	public CmsRightTable(
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
	public void setClassName(java.lang.String value) {
		this.className = value;
	}
	
	public java.lang.String getClassName() {
		return this.className;
	}
	public void setMethodName(java.lang.String value) {
		this.methodName = value;
	}
	
	public java.lang.String getMethodName() {
		return this.methodName;
	}
	public void setClassComment(java.lang.String value) {
		this.classComment = value;
	}
	
	public java.lang.String getClassComment() {
		return this.classComment;
	}
	public void setMethodComment(java.lang.String value) {
		this.methodComment = value;
	}
	
	public java.lang.String getMethodComment() {
		return this.methodComment;
	}
	public void setShowInList(java.lang.Integer value) {
		this.showInList = value;
	}
	
	public java.lang.Integer getShowInList() {
		return this.showInList;
	}
	public void setLogInDatabase(java.lang.Integer value) {
		this.logInDatabase = value;
	}
	
	public java.lang.Integer getLogInDatabase() {
		return this.logInDatabase;
	}
	public void setVisitRightLevel(java.lang.Integer value) {
		this.visitRightLevel = value;
	}
	
	public java.lang.Integer getVisitRightLevel() {
		return this.visitRightLevel;
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
			.append("ClassName",getClassName())
			.append("MethodName",getMethodName())
			.append("ClassComment",getClassComment())
			.append("MethodComment",getMethodComment())
			.append("ShowInList",getShowInList())
			.append("LogInDatabase",getLogInDatabase())
			.append("VisitRightLevel",getVisitRightLevel())
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
		if(obj instanceof CmsRightTable == false) return false;
		if(this == obj) return true;
		CmsRightTable other = (CmsRightTable)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

