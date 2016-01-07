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


public class CmsCommonComment extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsCommonComment";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USERID = "userid";
	public static final String ALIAS_USERNAME = "username";
	public static final String ALIAS_USERPHOTO = "userphoto";
	public static final String ALIAS_TARGET_TYPE = "targetType";
	public static final String ALIAS_TARGET_ID = "targetId";
	public static final String ALIAS_COMMENT_TYPE = "commentType";
	public static final String ALIAS_COMMENT = "comment";
	public static final String ALIAS_POINT_DESCRIPTION_MATCH = "pointDescriptionMatch";
	public static final String ALIAS_POINT_PERFATIONAL = "pointPerfational";
	public static final String ALIAS_POINT_SERVICE_ATTITUDE = "pointServiceAttitude";
	public static final String ALIAS_POINT = "point";
	public static final String ALIAS_POINT_APPOINTMENT_SUCCESSFUL = "pointAppointmentSuccessful";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_TARGETID2 = "targetid2";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long userid;
	@Length(max=100)
	private java.lang.String username;
	@Length(max=100)
	private java.lang.String userphoto;
	
	private java.lang.Integer targetType;
	
	private java.lang.Long targetId;
	
	private java.lang.Integer commentType;
	@Length(max=65535)
	private java.lang.String comment;
	
	private java.lang.Float pointDescriptionMatch;
	
	private java.lang.Float pointPerfational;
	
	private java.lang.Float pointServiceAttitude;
	
	private java.lang.Float pointAppointmentSuccessful;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	
	private java.lang.Long targetid2;
	private Object createUser;

	private java.lang.Float point;
	// columns END

	public java.lang.Float getPoint() {
		return point;
	}

	public void setPoint(java.lang.Float point) {
		this.point = point;
	}

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsCommonComment(){
	}

	public CmsCommonComment(
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
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	
	public java.lang.String getUsername() {
		return this.username;
	}
	public void setUserphoto(java.lang.String value) {
		this.userphoto = value;
	}
	
	public java.lang.String getUserphoto() {
		return this.userphoto;
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
	public void setCommentType(java.lang.Integer value) {
		this.commentType = value;
	}
	
	public java.lang.Integer getCommentType() {
		return this.commentType;
	}
	public void setComment(java.lang.String value) {
		this.comment = value;
	}
	
	public java.lang.String getComment() {
		return this.comment;
	}
	public void setPointDescriptionMatch(java.lang.Float value) {
		this.pointDescriptionMatch = value;
	}
	
	public java.lang.Float getPointDescriptionMatch() {
		return this.pointDescriptionMatch;
	}
	public void setPointPerfational(java.lang.Float value) {
		this.pointPerfational = value;
	}
	
	public java.lang.Float getPointPerfational() {
		return this.pointPerfational;
	}
	public void setPointServiceAttitude(java.lang.Float value) {
		this.pointServiceAttitude = value;
	}
	
	public java.lang.Float getPointServiceAttitude() {
		return this.pointServiceAttitude;
	}
	public void setPointAppointmentSuccessful(java.lang.Float value) {
		this.pointAppointmentSuccessful = value;
	}
	
	public java.lang.Float getPointAppointmentSuccessful() {
		return this.pointAppointmentSuccessful;
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
	public void setTargetid2(java.lang.Long value) {
		this.targetid2 = value;
	}
	
	public java.lang.Long getTargetid2() {
		return this.targetid2;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Userid",getUserid())
			.append("Username",getUsername())
			.append("Userphoto",getUserphoto())
			.append("TargetType",getTargetType())
			.append("TargetId",getTargetId())
			.append("CommentType",getCommentType())
			.append("Comment",getComment())
			.append("PointDescriptionMatch",getPointDescriptionMatch())
			.append("PointPerfational",getPointPerfational())
			.append("PointServiceAttitude",getPointServiceAttitude())
			.append("PointAppointmentSuccessful",getPointAppointmentSuccessful())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("Targetid2",getTargetid2())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsCommonComment == false) return false;
		if(this == obj) return true;
		CmsCommonComment other = (CmsCommonComment)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

