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


public class KlTopicCoach extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "男神女神";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_COACH_NAME = "教练姓名";
	public static final String ALIAS_COACH_SCHOOL = "毕业院校";
	public static final String ALIAS_SHOP_ADD = "商铺地址";
	public static final String ALIAS_SMS = "短信内容";
	public static final String ALIAS_PERSONAL_DECLARATION = "个人宣言";
	public static final String ALIAS_TOPIC_ABOUT_COACH = "你想知道的TA";
	public static final String ALIAS_TOPIC_COACH_CAPACITY = "TA的能耐";
	public static final String ALIAS_TOPIC_NEED = "约TA，你需要准备";
	public static final String ALIAS_NOW_INVITE = "马上约TA";
	public static final String ALIAS_COUNT = "数量";
	public static final String ALIAS_PHONE = "电话";
	public static final String ALIAS_EXT1 = "ext1";
	public static final String ALIAS_EXT2 = "ext2";
	public static final String ALIAS_EXT3 = "ext3";
	public static final String ALIAS_EXT4 = "ext4";
	public static final String ALIAS_EXT5 = "ext5";
	public static final String ALIAS_EXT_INT1 = "extInt1";
	public static final String ALIAS_EXT_INT2 = "extInt2";
	public static final String ALIAS_EXT_INT3 = "extInt3";
	public static final String ALIAS_EXT_INT4 = "extInt4";
	public static final String ALIAS_EXT_INT5 = "extInt5";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=50)
	private java.lang.String coachName;
	@Length(max=45)
	private java.lang.String coachSchool;
	@Length(max=200)
	private java.lang.String shopAdd;
	@Length(max=200)
	private java.lang.String sms;
	@Length(max=200)
	private java.lang.String personalDeclaration;
	@Length(max=65535)
	private java.lang.String topicAboutCoach;
	@Length(max=65535)
	private java.lang.String topicCoachCapacity;
	@Length(max=65535)
	private java.lang.String topicNeed;
	@Length(max=65535)
	private java.lang.String nowInvite;
	
	private java.lang.Integer count;
	@Length(max=20)
	private java.lang.String phone;
	@Length(max=200)
	private java.lang.String ext1;
	@Length(max=200)
	private java.lang.String ext2;
	@Length(max=200)
	private java.lang.String ext3;
	@Length(max=200)
	private java.lang.String ext4;
	@Length(max=200)
	private java.lang.String ext5;
	
	private java.lang.Integer extInt1;
	
	private java.lang.Integer extInt2;
	
	private java.lang.Integer extInt3;
	
	private java.lang.Integer extInt4;
	
	private java.lang.Integer extInt5;
	
	private java.lang.Integer status;
	
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

	public KlTopicCoach(){
	}

	public KlTopicCoach(
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
	public void setCoachName(java.lang.String value) {
		this.coachName = value;
	}
	
	public java.lang.String getCoachName() {
		return this.coachName;
	}
	public void setCoachSchool(java.lang.String value) {
		this.coachSchool = value;
	}
	
	public java.lang.String getCoachSchool() {
		return this.coachSchool;
	}
	public void setShopAdd(java.lang.String value) {
		this.shopAdd = value;
	}
	
	public java.lang.String getShopAdd() {
		return this.shopAdd;
	}
	public void setSms(java.lang.String value) {
		this.sms = value;
	}
	
	public java.lang.String getSms() {
		return this.sms;
	}
	public void setPersonalDeclaration(java.lang.String value) {
		this.personalDeclaration = value;
	}
	
	public java.lang.String getPersonalDeclaration() {
		return this.personalDeclaration;
	}
	public void setTopicAboutCoach(java.lang.String value) {
		this.topicAboutCoach = value;
	}
	
	public java.lang.String getTopicAboutCoach() {
		return this.topicAboutCoach;
	}
	public void setTopicCoachCapacity(java.lang.String value) {
		this.topicCoachCapacity = value;
	}
	
	public java.lang.String getTopicCoachCapacity() {
		return this.topicCoachCapacity;
	}
	public void setTopicNeed(java.lang.String value) {
		this.topicNeed = value;
	}
	
	public java.lang.String getTopicNeed() {
		return this.topicNeed;
	}
	public void setNowInvite(java.lang.String value) {
		this.nowInvite = value;
	}
	
	public java.lang.String getNowInvite() {
		return this.nowInvite;
	}
	public void setCount(java.lang.Integer value) {
		this.count = value;
	}
	
	public java.lang.Integer getCount() {
		return this.count;
	}
	public void setPhone(java.lang.String value) {
		this.phone = value;
	}
	
	public java.lang.String getPhone() {
		return this.phone;
	}
	public void setExt1(java.lang.String value) {
		this.ext1 = value;
	}
	
	public java.lang.String getExt1() {
		return this.ext1;
	}
	public void setExt2(java.lang.String value) {
		this.ext2 = value;
	}
	
	public java.lang.String getExt2() {
		return this.ext2;
	}
	public void setExt3(java.lang.String value) {
		this.ext3 = value;
	}
	
	public java.lang.String getExt3() {
		return this.ext3;
	}
	public void setExt4(java.lang.String value) {
		this.ext4 = value;
	}
	
	public java.lang.String getExt4() {
		return this.ext4;
	}
	public void setExt5(java.lang.String value) {
		this.ext5 = value;
	}
	
	public java.lang.String getExt5() {
		return this.ext5;
	}
	public void setExtInt1(java.lang.Integer value) {
		this.extInt1 = value;
	}
	
	public java.lang.Integer getExtInt1() {
		return this.extInt1;
	}
	public void setExtInt2(java.lang.Integer value) {
		this.extInt2 = value;
	}
	
	public java.lang.Integer getExtInt2() {
		return this.extInt2;
	}
	public void setExtInt3(java.lang.Integer value) {
		this.extInt3 = value;
	}
	
	public java.lang.Integer getExtInt3() {
		return this.extInt3;
	}
	public void setExtInt4(java.lang.Integer value) {
		this.extInt4 = value;
	}
	
	public java.lang.Integer getExtInt4() {
		return this.extInt4;
	}
	public void setExtInt5(java.lang.Integer value) {
		this.extInt5 = value;
	}
	
	public java.lang.Integer getExtInt5() {
		return this.extInt5;
	}
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
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
			.append("CoachName",getCoachName())
			.append("CoachSchool",getCoachSchool())
			.append("ShopAdd",getShopAdd())
			.append("Sms",getSms())
			.append("PersonalDeclaration",getPersonalDeclaration())
			.append("TopicAboutCoach",getTopicAboutCoach())
			.append("TopicCoachCapacity",getTopicCoachCapacity())
			.append("TopicNeed",getTopicNeed())
			.append("NowInvite",getNowInvite())
			.append("Count",getCount())
			.append("Phone",getPhone())
			.append("Ext1",getExt1())
			.append("Ext2",getExt2())
			.append("Ext3",getExt3())
			.append("Ext4",getExt4())
			.append("Ext5",getExt5())
			.append("ExtInt1",getExtInt1())
			.append("ExtInt2",getExtInt2())
			.append("ExtInt3",getExtInt3())
			.append("ExtInt4",getExtInt4())
			.append("ExtInt5",getExtInt5())
			.append("Status",getStatus())
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
		if(obj instanceof KlTopicCoach == false) return false;
		if(this == obj) return true;
		KlTopicCoach other = (KlTopicCoach)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

