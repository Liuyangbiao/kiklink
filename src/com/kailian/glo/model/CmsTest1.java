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


public class CmsTest1 extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsTest1";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_LOGINNAME = "loginname";
	public static final String ALIAS_PASSWD = "passwd";
	public static final String ALIAS_EMAIL = "email";
	public static final String ALIAS_PHONE = "phone";
	public static final String ALIAS_IMG1 = "img1";
	public static final String ALIAS_IMG2 = "img2";
	public static final String ALIAS_LEVEL = "0 admin 1 superAdmin";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_EXT1 = "ext1";
	public static final String ALIAS_EXT2 = "ext2";
	public static final String ALIAS_EXT3 = "ext3";
	public static final String ALIAS_EXT4 = "ext4";
	public static final String ALIAS_EXT5 = "ext5";
	public static final String ALIAS_EXTINT1 = "extint1";
	public static final String ALIAS_EXTINT2 = "extint2";
	public static final String ALIAS_EXTINT3 = "extint3";
	public static final String ALIAS_EXTINT4 = "extint4";
	public static final String ALIAS_EXTINT5 = "extint5";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=100)
	private java.lang.String name;
	@Length(max=100)
	private java.lang.String loginname;
	@Length(max=100)
	private java.lang.String passwd;
	@Email @Length(max=100)
	private java.lang.String email;
	@Length(max=100)
	private java.lang.String phone;
	@Length(max=200)
	private java.lang.String img1;
	@Length(max=200)
	private java.lang.String img2;
	
	private java.lang.Integer level;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	@Length(max=65535)
	private java.lang.String ext1;
	@Length(max=65535)
	private java.lang.String ext2;
	@Length(max=65535)
	private java.lang.String ext3;
	@Length(max=65535)
	private java.lang.String ext4;
	@Length(max=65535)
	private java.lang.String ext5;
	
	private java.lang.Integer extint1;
	
	private java.lang.Integer extint2;
	
	private java.lang.Integer extint3;
	
	private java.lang.Integer extint4;
	
	private java.lang.Integer extint5;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsTest1(){
	}

	public CmsTest1(
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
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setLoginname(java.lang.String value) {
		this.loginname = value;
	}
	
	public java.lang.String getLoginname() {
		return this.loginname;
	}
	public void setPasswd(java.lang.String value) {
		this.passwd = value;
	}
	
	public java.lang.String getPasswd() {
		return this.passwd;
	}
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	public void setPhone(java.lang.String value) {
		this.phone = value;
	}
	
	public java.lang.String getPhone() {
		return this.phone;
	}
	public void setImg1(java.lang.String value) {
		this.img1 = value;
	}
	
	public java.lang.String getImg1() {
		return this.img1;
	}
	public void setImg2(java.lang.String value) {
		this.img2 = value;
	}
	
	public java.lang.String getImg2() {
		return this.img2;
	}
	public void setLevel(java.lang.Integer value) {
		this.level = value;
	}
	
	public java.lang.Integer getLevel() {
		return this.level;
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
	public void setExtint1(java.lang.Integer value) {
		this.extint1 = value;
	}
	
	public java.lang.Integer getExtint1() {
		return this.extint1;
	}
	public void setExtint2(java.lang.Integer value) {
		this.extint2 = value;
	}
	
	public java.lang.Integer getExtint2() {
		return this.extint2;
	}
	public void setExtint3(java.lang.Integer value) {
		this.extint3 = value;
	}
	
	public java.lang.Integer getExtint3() {
		return this.extint3;
	}
	public void setExtint4(java.lang.Integer value) {
		this.extint4 = value;
	}
	
	public java.lang.Integer getExtint4() {
		return this.extint4;
	}
	public void setExtint5(java.lang.Integer value) {
		this.extint5 = value;
	}
	
	public java.lang.Integer getExtint5() {
		return this.extint5;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Name",getName())
			.append("Loginname",getLoginname())
			.append("Passwd",getPasswd())
			.append("Email",getEmail())
			.append("Phone",getPhone())
			.append("Img1",getImg1())
			.append("Img2",getImg2())
			.append("Level",getLevel())
			.append("Status",getStatus())
			.append("Addition",getAddition())
			.append("Createtimelong",getCreatetimelong())
			.append("Modifytimelong",getModifytimelong())
			.append("Createuser",getCreateuser())
			.append("Modifyuser",getModifyuser())
			.append("Ext1",getExt1())
			.append("Ext2",getExt2())
			.append("Ext3",getExt3())
			.append("Ext4",getExt4())
			.append("Ext5",getExt5())
			.append("Extint1",getExtint1())
			.append("Extint2",getExtint2())
			.append("Extint3",getExtint3())
			.append("Extint4",getExtint4())
			.append("Extint5",getExtint5())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsTest1 == false) return false;
		if(this == obj) return true;
		CmsTest1 other = (CmsTest1)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

