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


public class CmsStProductinfo extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsStProductinfo";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_PRODUCTNAME = "产品名  模板1、相关推荐必填";
	public static final String ALIAS_PRICE = "价格  模板1、相关推荐必填";
	public static final String ALIAS_PER_CLASS_MINUTES = "时长  模板1、相关推荐必填";
	public static final String ALIAS_SHOPNAME = "店名  必填";
	public static final String ALIAS_SUBNAME = "店铺描述 必填";
	public static final String ALIAS_PRODUCTID = "产品id   模板1、相关推荐必填";
	public static final String ALIAS_SHOPID = "店铺id   模板1、相关推荐必填";
	public static final String ALIAS_PRODUCTIMG = "产品图片 320*260 相关课程推荐：205*205 必填";
	public static final String ALIAS_LINKTYPE = "linktype";
	public static final String ALIAS_RANK = "rank";
	public static final String ALIAS_STYLECLASS = "styleclass";
	public static final String ALIAS_EXT1 = "模板2店铺名图片  520*60  模板2必填";
	public static final String ALIAS_EXT2 = "店铺链接地址";
	public static final String ALIAS_EXT3 = "产品链接地址";
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
	public static final String ALIAS_TOPICID = "topicid";
	public static final String ALIAS_GROUPID = "groupid";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	@Length(max=200)
	private java.lang.String productname;
	
	private java.lang.Float price;
	@Length(max=100)
	private java.lang.String perClassMinutes;
	@Length(max=200)
	private java.lang.String shopname;
	@Length(max=100)
	private java.lang.String subname;
	
	private java.lang.Long productid;
	
	private java.lang.Long shopid;
	@Length(max=200)
	private java.lang.String productimg;
	
	private java.lang.Integer linktype;
	
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
	
	private java.lang.Long topicid;
	
	private java.lang.Long groupid;
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public CmsStProductinfo(){
	}

	public CmsStProductinfo(
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
	public void setProductname(java.lang.String value) {
		this.productname = value;
	}
	
	public java.lang.String getProductname() {
		return this.productname;
	}
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	public void setPerClassMinutes(java.lang.String value) {
		this.perClassMinutes = value;
	}
	
	public java.lang.String getPerClassMinutes() {
		return this.perClassMinutes;
	}
	public void setShopname(java.lang.String value) {
		this.shopname = value;
	}
	
	public java.lang.String getShopname() {
		return this.shopname;
	}
	public void setSubname(java.lang.String value) {
		this.subname = value;
	}
	
	public java.lang.String getSubname() {
		return this.subname;
	}
	public void setProductid(java.lang.Long value) {
		this.productid = value;
	}
	
	public java.lang.Long getProductid() {
		return this.productid;
	}
	public void setShopid(java.lang.Long value) {
		this.shopid = value;
	}
	
	public java.lang.Long getShopid() {
		return this.shopid;
	}
	public void setProductimg(java.lang.String value) {
		this.productimg = value;
	}
	
	public java.lang.String getProductimg() {
		return this.productimg;
	}
	public void setLinktype(java.lang.Integer value) {
		this.linktype = value;
	}
	
	public java.lang.Integer getLinktype() {
		return this.linktype;
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
	public void setTopicid(java.lang.Long value) {
		this.topicid = value;
	}
	
	public java.lang.Long getTopicid() {
		return this.topicid;
	}
	public void setGroupid(java.lang.Long value) {
		this.groupid = value;
	}
	
	public java.lang.Long getGroupid() {
		return this.groupid;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Productname",getProductname())
			.append("Price",getPrice())
			.append("PerClassMinutes",getPerClassMinutes())
			.append("Shopname",getShopname())
			.append("Subname",getSubname())
			.append("Productid",getProductid())
			.append("Shopid",getShopid())
			.append("Productimg",getProductimg())
			.append("Linktype",getLinktype())
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
			.append("Topicid",getTopicid())
			.append("Groupid",getGroupid())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof CmsStProductinfo == false) return false;
		if(this == obj) return true;
		CmsStProductinfo other = (CmsStProductinfo)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

