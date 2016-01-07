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


public class CtPhoto extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CtPhoto";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_OWNERID = "ownerid";
	public static final String ALIAS_OWNERTYPE = "ownertype";
	public static final String ALIAS_SUBMITERID = "submiterid";
	public static final String ALIAS_SUBMITERNAME = "submitername";
	public static final String ALIAS_IMGURL = "imgurl";
	public static final String ALIAS_IMGNAME = "imgname";
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
	
	private java.lang.Long ownerid;
	
	private java.lang.Integer ownertype;
	
	private java.lang.Long submiterid;
	@NotBlank @Length(max=200)
	private java.lang.String submitername;
	@Length(max=200)
	private java.lang.String imgurl;
	@Length(max=200)
	private java.lang.String imgname;
	
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

	public CtPhoto(){
	}

	public CtPhoto(
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
	public void setOwnerid(java.lang.Long value) {
		this.ownerid = value;
	}
	
	public java.lang.Long getOwnerid() {
		return this.ownerid;
	}
	public void setOwnertype(java.lang.Integer value) {
		this.ownertype = value;
	}
	
	public java.lang.Integer getOwnertype() {
		return this.ownertype;
	}
	public void setSubmiterid(java.lang.Long value) {
		this.submiterid = value;
	}
	
	public java.lang.Long getSubmiterid() {
		return this.submiterid;
	}
	public void setSubmitername(java.lang.String value) {
		this.submitername = value;
	}
	
	public java.lang.String getSubmitername() {
		return this.submitername;
	}
	public void setImgurl(java.lang.String value) {
		this.imgurl = value;
	}
	
	public java.lang.String getImgurl() {
		return this.imgurl;
	}
	public void setImgname(java.lang.String value) {
		this.imgname = value;
	}
	
	public java.lang.String getImgname() {
		return this.imgname;
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
			.append("Ownerid",getOwnerid())
			.append("Ownertype",getOwnertype())
			.append("Submiterid",getSubmiterid())
			.append("Submitername",getSubmitername())
			.append("Imgurl",getImgurl())
			.append("Imgname",getImgname())
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
		if(obj instanceof CtPhoto == false) return false;
		if(this == obj) return true;
		CtPhoto other = (CtPhoto)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

