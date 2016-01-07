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


public class CmsUserEmail extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsUserEmail";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_SOURCE_TYPE = "sourceType";
	public static final String ALIAS_FROM_USER_ID = "fromUserId";
	public static final String ALIAS_TO_USER_ID = "toUserId";
	public static final String ALIAS_FROM_USER_NAME = "fromUserName";
	public static final String ALIAS_TO_USER_NAME = "toUserName";
	public static final String ALIAS_FROM_USER_PHOTO = "fromUserPhoto";
	public static final String ALIAS_TO_USER_PHOTO = "toUserPhoto";
	public static final String ALIAS_CONTENT = "content";
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
	
	private java.lang.Integer sourceType;
	
	private java.lang.Long fromUserId;
	
	private java.lang.Long toUserId;
	@Length(max=100)
	private java.lang.String fromUserName;
	@Length(max=100)
	private java.lang.String toUserName;
	@Length(max=100)
	private java.lang.String fromUserPhoto;
	@Length(max=100)
	private java.lang.String toUserPhoto;
	@Length(max=65535)
	private java.lang.String content;
	
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

	public CmsUserEmail(){
	}

	public CmsUserEmail(
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
	public void setSourceType(java.lang.Integer value) {
		this.sourceType = value;
	}
	
	public java.lang.Integer getSourceType() {
		return this.sourceType;
	}
	public void setFromUserId(java.lang.Long value) {
		this.fromUserId = value;
	}
	
	public java.lang.Long getFromUserId() {
		return this.fromUserId;
	}
	public void setToUserId(java.lang.Long value) {
		this.toUserId = value;
	}
	
	public java.lang.Long getToUserId() {
		return this.toUserId;
	}
	public void setFromUserName(java.lang.String value) {
		this.fromUserName = value;
	}
	
	public java.lang.String getFromUserName() {
		return this.fromUserName;
	}
	public void setToUserName(java.lang.String value) {
		this.toUserName = value;
	}
	
	public java.lang.String getToUserName() {
		return this.toUserName;
	}
	public void setFromUserPhoto(java.lang.String value) {
		this.fromUserPhoto = value;
	}
	
	public java.lang.String getFromUserPhoto() {
		return this.fromUserPhoto;
	}
	public void setToUserPhoto(java.lang.String value) {
		this.toUserPhoto = value;
	}
	
	public java.lang.String getToUserPhoto() {
		return this.toUserPhoto;
	}
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	public java.lang.String getContent() {
		return this.content;
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
			.append("SourceType",getSourceType())
			.append("FromUserId",getFromUserId())
			.append("ToUserId",getToUserId())
			.append("FromUserName",getFromUserName())
			.append("ToUserName",getToUserName())
			.append("FromUserPhoto",getFromUserPhoto())
			.append("ToUserPhoto",getToUserPhoto())
			.append("Content",getContent())
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
		if(obj instanceof CmsUserEmail == false) return false;
		if(this == obj) return true;
		CmsUserEmail other = (CmsUserEmail)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

