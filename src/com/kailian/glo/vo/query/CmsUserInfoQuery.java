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


public class CmsUserInfoQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** username */
	private java.lang.String username;
	/** passwd */
	private java.lang.String passwd;
	/** thirdType */
	private java.lang.String thirdType;
	/** openid */
	private java.lang.String openid;
	/** source */
	private java.lang.String source;
	/** mobile */
	private java.lang.String mobile;
	/** email */
	private java.lang.String email;
	/** realName */
	private java.lang.String realName;
	/** provinceid */
	private java.lang.Long provinceid;
	/** province */
	private java.lang.String province;
	/** cityid */
	private java.lang.Long cityid;
	/** city */
	private java.lang.String city;
	/** quid */
	private java.lang.Long quid;
	/** qu */
	private java.lang.String qu;
	/** birthYear */
	private java.lang.Integer birthYear;
	/** birthMonth */
	private java.lang.Integer birthMonth;
	/** birthDate */
	private java.lang.Integer birthDate;
	/** phone */
	private java.lang.String phone;
	/** address */
	private java.lang.String address;
	/** postCode */
	private java.lang.String postCode;
	/** photo */
	private java.lang.String photo;
	/** usertype */
	private java.lang.Integer usertype;
	/** createGroupCount */
	private java.lang.Integer createGroupCount;
	/** joinGroupCount */
	private java.lang.Integer joinGroupCount;
	/** createTopicCount */
	private java.lang.Integer createTopicCount;
	/** replyCount */
	private java.lang.Integer replyCount;
	/** points */
	private java.lang.Long points;
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
	/** sex */
	private java.lang.Integer sex;
	
	private java.lang.String moboremail;
	
	private java.lang.Long 	lastlogintime;



	public java.lang.Long getLastlogintime() {
		return lastlogintime;
	}

	public void setLastlogintime(java.lang.Long lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public java.lang.String getMoboremail() {
		return moboremail;
	}

	public void setMoboremail(java.lang.String moboremail) {
		this.moboremail = moboremail;
	}

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getUsername() {
		return this.username;
	}
	
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	
	public java.lang.String getPasswd() {
		return this.passwd;
	}
	
	public void setPasswd(java.lang.String value) {
		this.passwd = value;
	}
	
	public java.lang.String getThirdType() {
		return this.thirdType;
	}
	
	public void setThirdType(java.lang.String value) {
		this.thirdType = value;
	}
	
	public java.lang.String getOpenid() {
		return this.openid;
	}
	
	public void setOpenid(java.lang.String value) {
		this.openid = value;
	}
	
	public java.lang.String getSource() {
		return this.source;
	}
	
	public void setSource(java.lang.String value) {
		this.source = value;
	}
	
	public java.lang.String getMobile() {
		return this.mobile;
	}
	
	public void setMobile(java.lang.String value) {
		this.mobile = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.String getRealName() {
		return this.realName;
	}
	
	public void setRealName(java.lang.String value) {
		this.realName = value;
	}
	
	public java.lang.Long getProvinceid() {
		return this.provinceid;
	}
	
	public void setProvinceid(java.lang.Long value) {
		this.provinceid = value;
	}
	
	public java.lang.String getProvince() {
		return this.province;
	}
	
	public void setProvince(java.lang.String value) {
		this.province = value;
	}
	
	public java.lang.Long getCityid() {
		return this.cityid;
	}
	
	public void setCityid(java.lang.Long value) {
		this.cityid = value;
	}
	
	public java.lang.String getCity() {
		return this.city;
	}
	
	public void setCity(java.lang.String value) {
		this.city = value;
	}
	
	public java.lang.Long getQuid() {
		return this.quid;
	}
	
	public void setQuid(java.lang.Long value) {
		this.quid = value;
	}
	
	public java.lang.String getQu() {
		return this.qu;
	}
	
	public void setQu(java.lang.String value) {
		this.qu = value;
	}
	
	public java.lang.Integer getBirthYear() {
		return this.birthYear;
	}
	
	public void setBirthYear(java.lang.Integer value) {
		this.birthYear = value;
	}
	
	public java.lang.Integer getBirthMonth() {
		return this.birthMonth;
	}
	
	public void setBirthMonth(java.lang.Integer value) {
		this.birthMonth = value;
	}
	
	public java.lang.Integer getBirthDate() {
		return this.birthDate;
	}
	
	public void setBirthDate(java.lang.Integer value) {
		this.birthDate = value;
	}
	
	public java.lang.String getPhone() {
		return this.phone;
	}
	
	public void setPhone(java.lang.String value) {
		this.phone = value;
	}
	
	public java.lang.String getAddress() {
		return this.address;
	}
	
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	public java.lang.String getPostCode() {
		return this.postCode;
	}
	
	public void setPostCode(java.lang.String value) {
		this.postCode = value;
	}
	
	public java.lang.String getPhoto() {
		return this.photo;
	}
	
	public void setPhoto(java.lang.String value) {
		this.photo = value;
	}
	
	public java.lang.Integer getUsertype() {
		return this.usertype;
	}
	
	public void setUsertype(java.lang.Integer value) {
		this.usertype = value;
	}
	
	public java.lang.Integer getCreateGroupCount() {
		return this.createGroupCount;
	}
	
	public void setCreateGroupCount(java.lang.Integer value) {
		this.createGroupCount = value;
	}
	
	public java.lang.Integer getJoinGroupCount() {
		return this.joinGroupCount;
	}
	
	public void setJoinGroupCount(java.lang.Integer value) {
		this.joinGroupCount = value;
	}
	
	public java.lang.Integer getCreateTopicCount() {
		return this.createTopicCount;
	}
	
	public void setCreateTopicCount(java.lang.Integer value) {
		this.createTopicCount = value;
	}
	
	public java.lang.Integer getReplyCount() {
		return this.replyCount;
	}
	
	public void setReplyCount(java.lang.Integer value) {
		this.replyCount = value;
	}
	
	public java.lang.Long getPoints() {
		return this.points;
	}
	
	public void setPoints(java.lang.Long value) {
		this.points = value;
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
	
	public java.lang.Integer getSex() {
		return this.sex;
	}
	
	public void setSex(java.lang.Integer value) {
		this.sex = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

