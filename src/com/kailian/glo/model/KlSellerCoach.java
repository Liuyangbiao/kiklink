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


public class KlSellerCoach extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "KlSellerCoach";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_SHOP_ID = "shopId";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_SEX = "sex";
	public static final String ALIAS_BIRTH_YEAR = "birthYear";
	public static final String ALIAS_BIRTH_MONTH = "birthMonth";
	public static final String ALIAS_BIRTH_DATE = "birthDate";
	public static final String ALIAS_PHOTO = "photo";
	public static final String ALIAS_PROFILE = "profile";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_HONOR = "荣誉";
	public static final String ALIAS_GOODAT = "擅长";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long shopId;
	@Length(max=100)
	private java.lang.String name;
	
	private java.lang.Integer sex;
	
	private java.lang.Integer birthYear;
	
	private java.lang.Integer birthMonth;
	
	private java.lang.Integer birthDate;
	@Length(max=100)
	private java.lang.String photo;
	@Length(max=65535)
	private java.lang.String profile;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	@Length(max=65535)
	private java.lang.String honor;
	@Length(max=65535)
	private java.lang.String goodat;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public java.lang.String getHonor() {
		return honor;
	}

	public void setHonor(java.lang.String honor) {
		this.honor = honor;
	}

	public java.lang.String getGoodat() {
		return goodat;
	}

	public void setGoodat(java.lang.String goodat) {
		this.goodat = goodat;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public KlSellerCoach(){
	}

	public KlSellerCoach(
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
	public void setShopId(java.lang.Long value) {
		this.shopId = value;
	}
	
	public java.lang.Long getShopId() {
		return this.shopId;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setSex(java.lang.Integer value) {
		this.sex = value;
	}
	
	public java.lang.Integer getSex() {
		return this.sex;
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
	public void setPhoto(java.lang.String value) {
		this.photo = value;
	}
	
	public java.lang.String getPhoto() {
		return this.photo;
	}
	public void setProfile(java.lang.String value) {
		this.profile = value;
	}
	
	public java.lang.String getProfile() {
		return this.profile;
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
			.append("ShopId",getShopId())
			.append("Name",getName())
			.append("Sex",getSex())
			.append("BirthYear",getBirthYear())
			.append("BirthMonth",getBirthMonth())
			.append("BirthDate",getBirthDate())
			.append("Photo",getPhoto())
			.append("Profile",getProfile())
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
		if(obj instanceof KlSellerCoach == false) return false;
		if(this == obj) return true;
		KlSellerCoach other = (KlSellerCoach)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

