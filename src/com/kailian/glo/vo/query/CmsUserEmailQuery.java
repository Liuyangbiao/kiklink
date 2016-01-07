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


public class CmsUserEmailQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** sourceType */
	private java.lang.Integer sourceType;
	/** fromUserId */
	private java.lang.Long fromUserId;
	/** toUserId */
	private java.lang.Long toUserId;
	/** fromUserName */
	private java.lang.String fromUserName;
	/** toUserName */
	private java.lang.String toUserName;
	/** fromUserPhoto */
	private java.lang.String fromUserPhoto;
	/** toUserPhoto */
	private java.lang.String toUserPhoto;
	/** content */
	private java.lang.String content;
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
	
	public java.lang.Integer getSourceType() {
		return this.sourceType;
	}
	
	public void setSourceType(java.lang.Integer value) {
		this.sourceType = value;
	}
	
	public java.lang.Long getFromUserId() {
		return this.fromUserId;
	}
	
	public void setFromUserId(java.lang.Long value) {
		this.fromUserId = value;
	}
	
	public java.lang.Long getToUserId() {
		return this.toUserId;
	}
	
	public void setToUserId(java.lang.Long value) {
		this.toUserId = value;
	}
	
	public java.lang.String getFromUserName() {
		return this.fromUserName;
	}
	
	public void setFromUserName(java.lang.String value) {
		this.fromUserName = value;
	}
	
	public java.lang.String getToUserName() {
		return this.toUserName;
	}
	
	public void setToUserName(java.lang.String value) {
		this.toUserName = value;
	}
	
	public java.lang.String getFromUserPhoto() {
		return this.fromUserPhoto;
	}
	
	public void setFromUserPhoto(java.lang.String value) {
		this.fromUserPhoto = value;
	}
	
	public java.lang.String getToUserPhoto() {
		return this.toUserPhoto;
	}
	
	public void setToUserPhoto(java.lang.String value) {
		this.toUserPhoto = value;
	}
	
	public java.lang.String getContent() {
		return this.content;
	}
	
	public void setContent(java.lang.String value) {
		this.content = value;
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

