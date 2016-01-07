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


public class CmsStSpecialtopic extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsStSpecialtopic";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_TOPICNAME = "专题名  必填";
	public static final String ALIAS_KEYWORDS = "专题关键字 必填";
	public static final String ALIAS_DESCRIPTION = "专题描述 必填";
	public static final String ALIAS_BGIMG1 = "背景图 模板1：1920*2840 模板2：1920*2545  必填";
	public static final String ALIAS_BGIMG2 = "英文缩写标题图片  模板1不填 模板2:1000*25 必填";
	public static final String ALIAS_SUGGESTWORDS = "编辑推荐 必填";
	public static final String ALIAS_HEADIMG = "头图 模板1:1000*633 模板2:1920*498 均必填";
	public static final String ALIAS_TOPICTYPE = "专题类型 必选";
	public static final String ALIAS_TEMPLATEID = "模板id";
	public static final String ALIAS_RANK = "权重";
	public static final String ALIAS_STYLECLASS = "风格名称";
	public static final String ALIAS_EXT1 = "焦点图链接";
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
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=200)
	private java.lang.String topicname;
	@Length(max=200)
	private java.lang.String keywords;
	@Length(max=65535)
	private java.lang.String description;
	@Length(max=200)
	private java.lang.String bgimg1;
	@Length(max=200)
	private java.lang.String bgimg2;
	@Length(max=65535)
	private java.lang.String suggestwords;
	@Length(max=200)
	private java.lang.String headimg;
	
	private java.lang.Integer topictype;
	
	private java.lang.Long templateid;
	
	private java.lang.Integer rank;
	@Length(max=200)
	private java.lang.String styleclass;
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

	public CmsStSpecialtopic(){
	}

	public CmsStSpecialtopic(
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
	public void setTopicname(java.lang.String value) {
		this.topicname = value;
	}
	
	public java.lang.String getTopicname() {
		return this.topicname;
	}
	public void setKeywords(java.lang.String value) {
		this.keywords = value;
	}
	
	public java.lang.String getKeywords() {
		return this.keywords;
	}
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	public void setBgimg1(java.lang.String value) {
		this.bgimg1 = value;
	}
	
	public java.lang.String getBgimg1() {
		return this.bgimg1;
	}
	public void setBgimg2(java.lang.String value) {
		this.bgimg2 = value;
	}
	
	public java.lang.String getBgimg2() {
		return this.bgimg2;
	}
	public void setSuggestwords(java.lang.String value) {
		this.suggestwords = value;
	}
	
	public java.lang.String getSuggestwords() {
		return this.suggestwords;
	}
	public void setHeadimg(java.lang.String value) {
		this.headimg = value;
	}
	
	public java.lang.String getHeadimg() {
		return this.headimg;
	}
	public void setTopictype(java.lang.Integer value) {
		this.topictype = value;
	}
	
	public java.lang.Integer getTopictype() {
		return this.topictype;
	}
	public void setTemplateid(java.lang.Long value) {
		this.templateid = value;
	}
	
	public java.lang.Long getTemplateid() {
		return this.templateid;
	}
	public void setRank(java.lang.Integer value) {
		this.rank = value;
	}
	
	public java.lang.Integer getRank() {
		return this.rank;
	}
	public void setStyleclass(java.lang.String value) {
		this.styleclass = value;
	}
	
	public java.lang.String getStyleclass() {
		return this.styleclass;
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
			.append("Topicname",getTopicname())
			.append("Keywords",getKeywords())
			.append("Description",getDescription())
			.append("Bgimg1",getBgimg1())
			.append("Bgimg2",getBgimg2())
			.append("Suggestwords",getSuggestwords())
			.append("Headimg",getHeadimg())
			.append("Topictype",getTopictype())
			.append("Templateid",getTemplateid())
			.append("Rank",getRank())
			.append("Styleclass",getStyleclass())
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
		if(obj instanceof CmsStSpecialtopic == false) return false;
		if(this == obj) return true;
		CmsStSpecialtopic other = (CmsStSpecialtopic)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

