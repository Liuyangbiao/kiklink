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


public class CmsUserInfo extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsUserInfo";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USERNAME = "username";
	public static final String ALIAS_PASSWD = "passwd";
	public static final String ALIAS_THIRD_TYPE = "thirdType";
	public static final String ALIAS_OPENID = "openid";
	public static final String ALIAS_SOURCE = "source";
	public static final String ALIAS_MOBILE = "mobile";
	public static final String ALIAS_EMAIL = "email";
	public static final String ALIAS_REAL_NAME = "realName";
	public static final String ALIAS_PROVINCEID = "provinceid";
	public static final String ALIAS_PROVINCE = "province";
	public static final String ALIAS_CITYID = "cityid";
	public static final String ALIAS_CITY = "city";
	public static final String ALIAS_QUID = "quid";
	public static final String ALIAS_QU = "qu";
	public static final String ALIAS_BIRTH_YEAR = "birthYear";
	public static final String ALIAS_BIRTH_MONTH = "birthMonth";
	public static final String ALIAS_BIRTH_DATE = "birthDate";
	public static final String ALIAS_PHONE = "phone";
	public static final String ALIAS_ADDRESS = "address";
	public static final String ALIAS_POST_CODE = "postCode";
	public static final String ALIAS_PHOTO = "photo";
	public static final String ALIAS_USERTYPE = "usertype";
	public static final String ALIAS_CREATE_GROUP_COUNT = "createGroupCount";
	public static final String ALIAS_JOIN_GROUP_COUNT = "joinGroupCount";
	public static final String ALIAS_CREATE_TOPIC_COUNT = "createTopicCount";
	public static final String ALIAS_REPLY_COUNT = "replyCount";
	public static final String ALIAS_POINTS = "points";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_LASTLOGINTIME = "lastlogintime";
	public static final String ALIAS_SEX = "sex";
	public static final String ALIAS_MONEYLEFT = "moneyleft";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=50)
	private java.lang.String username;
	@Length(max=50)
	private java.lang.String passwd;
	@Length(max=20)
	private java.lang.String thirdType;
	@Length(max=64)
	private java.lang.String openid;
	@Length(max=100)
	private java.lang.String source;
	@Length(max=20)
	private java.lang.String mobile;
	@Email @Length(max=60)
	private java.lang.String email;
	@Length(max=100)
	private java.lang.String realName;
	
	private java.lang.Long provinceid;
	@Length(max=20)
	private java.lang.String province;
	
	private java.lang.Long cityid;
	@Length(max=20)
	private java.lang.String city;
	
	private java.lang.Long quid;
	@Length(max=20)
	private java.lang.String qu;
	
	private java.lang.Integer birthYear;
	
	private java.lang.Integer birthMonth;
	
	private java.lang.Integer birthDate;
	@Length(max=30)
	private java.lang.String phone;
	@Length(max=100)
	private java.lang.String address;
	@Length(max=20)
	private java.lang.String postCode;
	@Length(max=50)
	private java.lang.String photo;
	
	private java.lang.Integer usertype;
	
	private java.lang.Integer createGroupCount;
	
	private java.lang.Integer joinGroupCount;
	
	private java.lang.Integer createTopicCount;
	
	private java.lang.Integer replyCount;
	
	private java.lang.Long points;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	private java.lang.Long lastlogintime;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	
	private java.lang.Integer sex;
	private java.lang.String logintoken;
	
	private java.lang.Float moneyleft;
	
	public java.lang.Float getMoneyleft() {
		return moneyleft;
	}

	public void setMoneyleft(java.lang.Float moneyleft) {
		this.moneyleft = moneyleft;
	}

	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public java.lang.String getLogintoken() {
		return logintoken;
	}

	public void setLogintoken(java.lang.String logintoken) {
		this.logintoken = logintoken;
	}

	public java.lang.Long getLastlogintime() {
		return lastlogintime;
	}

	public void setLastlogintime(java.lang.Long lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsUserInfo(){
	}

	public CmsUserInfo(
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
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	
	public java.lang.String getUsername() {
		return this.username;
	}
	public void setPasswd(java.lang.String value) {
		this.passwd = value;
	}
	
	public java.lang.String getPasswd() {
		return this.passwd;
	}
	public void setThirdType(java.lang.String value) {
		this.thirdType = value;
	}
	
	public java.lang.String getThirdType() {
		return this.thirdType;
	}
	public void setOpenid(java.lang.String value) {
		this.openid = value;
	}
	
	public java.lang.String getOpenid() {
		return this.openid;
	}
	public void setSource(java.lang.String value) {
		this.source = value;
	}
	
	public java.lang.String getSource() {
		return this.source;
	}
	public void setMobile(java.lang.String value) {
		this.mobile = value;
	}
	
	public java.lang.String getMobile() {
		return this.mobile;
	}
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	public void setRealName(java.lang.String value) {
		this.realName = value;
	}
	
	public java.lang.String getRealName() {
		return this.realName;
	}
	public void setProvinceid(java.lang.Long value) {
		this.provinceid = value;
	}
	
	public java.lang.Long getProvinceid() {
		return this.provinceid;
	}
	public void setProvince(java.lang.String value) {
		this.province = value;
	}
	
	public java.lang.String getProvince() {
		return this.province;
	}
	public void setCityid(java.lang.Long value) {
		this.cityid = value;
	}
	
	public java.lang.Long getCityid() {
		return this.cityid;
	}
	public void setCity(java.lang.String value) {
		this.city = value;
	}
	
	public java.lang.String getCity() {
		return this.city;
	}
	public void setQuid(java.lang.Long value) {
		this.quid = value;
	}
	
	public java.lang.Long getQuid() {
		return this.quid;
	}
	public void setQu(java.lang.String value) {
		this.qu = value;
	}
	
	public java.lang.String getQu() {
		return this.qu;
	}
	public void setBirthYear(java.lang.Integer value) {
		this.birthYear = value;
	}
	
	public java.lang.Integer getBirthYear() {
		return this.birthYear;
	}
	public void setBirthMonth(java.lang.Integer value) {
		this.birthMonth = value;
	}
	
	public java.lang.Integer getBirthMonth() {
		return this.birthMonth;
	}
	public void setBirthDate(java.lang.Integer value) {
		this.birthDate = value;
	}
	
	public java.lang.Integer getBirthDate() {
		return this.birthDate;
	}
	public void setPhone(java.lang.String value) {
		this.phone = value;
	}
	
	public java.lang.String getPhone() {
		return this.phone;
	}
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	public java.lang.String getAddress() {
		return this.address;
	}
	public void setPostCode(java.lang.String value) {
		this.postCode = value;
	}
	
	public java.lang.String getPostCode() {
		return this.postCode;
	}
	public void setPhoto(java.lang.String value) {
		this.photo = value;
	}
	
	public java.lang.String getPhoto() {
		return this.photo;
	}
	public void setUsertype(java.lang.Integer value) {
		this.usertype = value;
	}
	
	public java.lang.Integer getUsertype() {
		return this.usertype;
	}
	public void setCreateGroupCount(java.lang.Integer value) {
		this.createGroupCount = value;
	}
	
	public java.lang.Integer getCreateGroupCount() {
		return this.createGroupCount;
	}
	public void setJoinGroupCount(java.lang.Integer value) {
		this.joinGroupCount = value;
	}
	
	public java.lang.Integer getJoinGroupCount() {
		return this.joinGroupCount;
	}
	public void setCreateTopicCount(java.lang.Integer value) {
		this.createTopicCount = value;
	}
	
	public java.lang.Integer getCreateTopicCount() {
		return this.createTopicCount;
	}
	public void setReplyCount(java.lang.Integer value) {
		this.replyCount = value;
	}
	
	public java.lang.Integer getReplyCount() {
		return this.replyCount;
	}
	public void setPoints(java.lang.Long value) {
		this.points = value;
	}
	
	public java.lang.Long getPoints() {
		return this.points;
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
	public void setSex(java.lang.Integer value) {
		this.sex = value;
	}
	
	public java.lang.Integer getSex() {
		return this.sex;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Username",getUsername())
			.append("Passwd",getPasswd())
			.append("ThirdType",getThirdType())
			.append("Openid",getOpenid())
			.append("Source",getSource())
			.append("Mobile",getMobile())
			.append("Email",getEmail())
			.append("RealName",getRealName())
			.append("Provinceid",getProvinceid())
			.append("Province",getProvince())
			.append("Cityid",getCityid())
			.append("City",getCity())
			.append("Quid",getQuid())
			.append("Qu",getQu())
			.append("BirthYear",getBirthYear())
			.append("BirthMonth",getBirthMonth())
			.append("BirthDate",getBirthDate())
			.append("Phone",getPhone())
			.append("Address",getAddress())
			.append("PostCode",getPostCode())
			.append("Photo",getPhoto())
			.append("Usertype",getUsertype())
			.append("CreateGroupCount",getCreateGroupCount())
			.append("JoinGroupCount",getJoinGroupCount())
			.append("CreateTopicCount",getCreateTopicCount())
			.append("ReplyCount",getReplyCount())
			.append("Points",getPoints())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("Sex",getSex())
			.append("Moneyleft", getMoneyleft())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsUserInfo == false) return false;
		if(this == obj) return true;
		CmsUserInfo other = (CmsUserInfo)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

