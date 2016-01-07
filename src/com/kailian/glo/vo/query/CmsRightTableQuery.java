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


public class CmsRightTableQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** className */
	private java.lang.String className;
	/** methodName */
	private java.lang.String methodName;
	/** classComment */
	private java.lang.String classComment;
	/** methodComment */
	private java.lang.String methodComment;
	/** showInList */
	private java.lang.Integer showInList;
	/** logInDatabase */
	private java.lang.Integer logInDatabase;
	/** visitRightLevel */
	private java.lang.Integer visitRightLevel;
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
	
	public java.lang.String getClassName() {
		return this.className;
	}
	
	public void setClassName(java.lang.String value) {
		this.className = value;
	}
	
	public java.lang.String getMethodName() {
		return this.methodName;
	}
	
	public void setMethodName(java.lang.String value) {
		this.methodName = value;
	}
	
	public java.lang.String getClassComment() {
		return this.classComment;
	}
	
	public void setClassComment(java.lang.String value) {
		this.classComment = value;
	}
	
	public java.lang.String getMethodComment() {
		return this.methodComment;
	}
	
	public void setMethodComment(java.lang.String value) {
		this.methodComment = value;
	}
	
	public java.lang.Integer getShowInList() {
		return this.showInList;
	}
	
	public void setShowInList(java.lang.Integer value) {
		this.showInList = value;
	}
	
	public java.lang.Integer getLogInDatabase() {
		return this.logInDatabase;
	}
	
	public void setLogInDatabase(java.lang.Integer value) {
		this.logInDatabase = value;
	}
	
	public java.lang.Integer getVisitRightLevel() {
		return this.visitRightLevel;
	}
	
	public void setVisitRightLevel(java.lang.Integer value) {
		this.visitRightLevel = value;
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

