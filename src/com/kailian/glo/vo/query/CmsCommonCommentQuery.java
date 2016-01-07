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


public class CmsCommonCommentQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** userid */
	private java.lang.Long userid;
	/** username */
	private java.lang.String username;
	/** userphoto */
	private java.lang.String userphoto;
	/** targetType */
	private java.lang.Integer targetType;
	/** targetId */
	private java.lang.Long targetId;
	/** commentType */
	private java.lang.Integer commentType;
	/** comment */
	private java.lang.String comment;
	/** pointDescriptionMatch */
	private java.lang.Float pointDescriptionMatch;
	/** pointPerfational */
	private java.lang.Float pointPerfational;
	/** pointServiceAttitude */
	private java.lang.Float pointServiceAttitude;
	/** pointAppointmentSuccessful */
	private java.lang.Float pointAppointmentSuccessful;
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
	/** targetid2 */
	private java.lang.Long targetid2;
	
	private java.lang.Float point;

	public java.lang.Float getPoint() {
		return point;
	}

	public void setPoint(java.lang.Float point) {
		this.point = point;
	}

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.String getUsername() {
		return this.username;
	}
	
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	
	public java.lang.String getUserphoto() {
		return this.userphoto;
	}
	
	public void setUserphoto(java.lang.String value) {
		this.userphoto = value;
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
	
	public java.lang.Integer getCommentType() {
		return this.commentType;
	}
	
	public void setCommentType(java.lang.Integer value) {
		this.commentType = value;
	}
	
	public java.lang.String getComment() {
		return this.comment;
	}
	
	public void setComment(java.lang.String value) {
		this.comment = value;
	}
	
	public java.lang.Float getPointDescriptionMatch() {
		return this.pointDescriptionMatch;
	}
	
	public void setPointDescriptionMatch(java.lang.Float value) {
		this.pointDescriptionMatch = value;
	}
	
	public java.lang.Float getPointPerfational() {
		return this.pointPerfational;
	}
	
	public void setPointPerfational(java.lang.Float value) {
		this.pointPerfational = value;
	}
	
	public java.lang.Float getPointServiceAttitude() {
		return this.pointServiceAttitude;
	}
	
	public void setPointServiceAttitude(java.lang.Float value) {
		this.pointServiceAttitude = value;
	}
	
	public java.lang.Float getPointAppointmentSuccessful() {
		return this.pointAppointmentSuccessful;
	}
	
	public void setPointAppointmentSuccessful(java.lang.Float value) {
		this.pointAppointmentSuccessful = value;
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
	
	public java.lang.Long getTargetid2() {
		return this.targetid2;
	}
	
	public void setTargetid2(java.lang.Long value) {
		this.targetid2 = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

