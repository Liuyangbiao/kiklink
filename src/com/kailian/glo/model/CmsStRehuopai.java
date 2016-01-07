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


public class CmsStRehuopai extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "CmsStRehuopai";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_ACTNAME = "actname";
	public static final String ALIAS_CLOSEDATE = "closedate";
	public static final String ALIAS_KEYWORDS = "keywords";
	public static final String ALIAS_DESCRIPTION = "description";
	public static final String ALIAS_CO_TIME = "coTime";
	public static final String ALIAS_CO_POSITION = "coPosition";
	public static final String ALIAS_BUS_WAY = "busWay";
	public static final String ALIAS_DRIVE_WAY = "driveWay";
	public static final String ALIAS_CO_PROCESS1 = "coProcess1";
	public static final String ALIAS_CO_PROCESS2 = "coProcess2";
	public static final String ALIAS_CO_PROCESS3 = "coProcess3";
	public static final String ALIAS_CO_PROCESS4 = "coProcess4";
	public static final String ALIAS_CO_PROCESS5 = "coProcess5";
	public static final String ALIAS_CO_PROCESS6 = "coProcess6";
	public static final String ALIAS_CO_PROCESS7 = "coProcess7";
	public static final String ALIAS_CO_PROCESS8 = "coProcess8";
	public static final String ALIAS_CO_PROCESS9 = "coProcess9";
	public static final String ALIAS_CO_PROCESS10 = "coProcess10";
	public static final String ALIAS_CO_TYPES = "coTypes";
	public static final String ALIAS_CO_ATTENTIONS = "coAttentions";
	public static final String ALIAS_PRICE = "price";
	public static final String ALIAS_PRICE_TIP = "priceTip";
	public static final String ALIAS_BIGIMG1 = "焦点图1 1600x498";
	public static final String ALIAS_BIGIMG2 = "焦点图2 1600x498";
	public static final String ALIAS_BIGIMG3 = "焦点图3 1600x498";
	public static final String ALIAS_BIGIMG4 = "焦点图4 1600x498";
	public static final String ALIAS_BIGIMG5 = "焦点图5 1600x498";
	public static final String ALIAS_BIGIMG6 = "焦点图6 1600x498";
	public static final String ALIAS_EXT1 = "ext1";
	public static final String ALIAS_EXT2 = "ext2";
	public static final String ALIAS_EXT3 = "ext3";
	public static final String ALIAS_EXT4 = "ext4";
	public static final String ALIAS_EXT5 = "ext5";
	public static final String ALIAS_EXT_INT1 = "icon类型";
	public static final String ALIAS_EXT_INT2 = "其他推荐";
	public static final String ALIAS_EXT_INT3 = "extInt3";
	public static final String ALIAS_EXT_INT4 = "报名人数限制";
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
	@Length(max=100)
	private java.lang.String actname;
	@Length(max=100)
	private java.lang.String closedate;
	@Length(max=200)
	private java.lang.String keywords;
	@Length(max=65535)
	private java.lang.String description;
	@Length(max=100)
	private java.lang.String coTime;
	@Length(max=200)
	private java.lang.String coPosition;
	@Length(max=200)
	private java.lang.String busWay;
	@Length(max=200)
	private java.lang.String driveWay;
	@Length(max=200)
	private java.lang.String coProcess1;
	@Length(max=200)
	private java.lang.String coProcess2;
	@Length(max=200)
	private java.lang.String coProcess3;
	@Length(max=200)
	private java.lang.String coProcess4;
	@Length(max=200)
	private java.lang.String coProcess5;
	@Length(max=200)
	private java.lang.String coProcess6;
	@Length(max=200)
	private java.lang.String coProcess7;
	@Length(max=200)
	private java.lang.String coProcess8;
	@Length(max=200)
	private java.lang.String coProcess9;
	@Length(max=200)
	private java.lang.String coProcess10;
	@Length(max=65535)
	private java.lang.String coTypes;
	@Length(max=200)
	private java.lang.String coAttentions;
	
	private java.lang.Float price;
	@Length(max=200)
	private java.lang.String priceTip;
	@Length(max=100)
	private java.lang.String bigimg1;
	@Length(max=100)
	private java.lang.String bigimg2;
	@Length(max=100)
	private java.lang.String bigimg3;
	@Length(max=100)
	private java.lang.String bigimg4;
	@Length(max=100)
	private java.lang.String bigimg5;
	@Length(max=100)
	private java.lang.String bigimg6;
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

	public CmsStRehuopai(){
	}

	public CmsStRehuopai(
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
	public void setActname(java.lang.String value) {
		this.actname = value;
	}
	
	public java.lang.String getActname() {
		return this.actname;
	}
	public void setClosedate(java.lang.String value) {
		this.closedate = value;
	}
	
	public java.lang.String getClosedate() {
		return this.closedate;
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
	public void setCoTime(java.lang.String value) {
		this.coTime = value;
	}
	
	public java.lang.String getCoTime() {
		return this.coTime;
	}
	public void setCoPosition(java.lang.String value) {
		this.coPosition = value;
	}
	
	public java.lang.String getCoPosition() {
		return this.coPosition;
	}
	public void setBusWay(java.lang.String value) {
		this.busWay = value;
	}
	
	public java.lang.String getBusWay() {
		return this.busWay;
	}
	public void setDriveWay(java.lang.String value) {
		this.driveWay = value;
	}
	
	public java.lang.String getDriveWay() {
		return this.driveWay;
	}
	public void setCoProcess1(java.lang.String value) {
		this.coProcess1 = value;
	}
	
	public java.lang.String getCoProcess1() {
		return this.coProcess1;
	}
	public void setCoProcess2(java.lang.String value) {
		this.coProcess2 = value;
	}
	
	public java.lang.String getCoProcess2() {
		return this.coProcess2;
	}
	public void setCoProcess3(java.lang.String value) {
		this.coProcess3 = value;
	}
	
	public java.lang.String getCoProcess3() {
		return this.coProcess3;
	}
	public void setCoProcess4(java.lang.String value) {
		this.coProcess4 = value;
	}
	
	public java.lang.String getCoProcess4() {
		return this.coProcess4;
	}
	public void setCoProcess5(java.lang.String value) {
		this.coProcess5 = value;
	}
	
	public java.lang.String getCoProcess5() {
		return this.coProcess5;
	}
	public void setCoProcess6(java.lang.String value) {
		this.coProcess6 = value;
	}
	
	public java.lang.String getCoProcess6() {
		return this.coProcess6;
	}
	public void setCoProcess7(java.lang.String value) {
		this.coProcess7 = value;
	}
	
	public java.lang.String getCoProcess7() {
		return this.coProcess7;
	}
	public void setCoProcess8(java.lang.String value) {
		this.coProcess8 = value;
	}
	
	public java.lang.String getCoProcess8() {
		return this.coProcess8;
	}
	public void setCoProcess9(java.lang.String value) {
		this.coProcess9 = value;
	}
	
	public java.lang.String getCoProcess9() {
		return this.coProcess9;
	}
	public void setCoProcess10(java.lang.String value) {
		this.coProcess10 = value;
	}
	
	public java.lang.String getCoProcess10() {
		return this.coProcess10;
	}
	public void setCoTypes(java.lang.String value) {
		this.coTypes = value;
	}
	
	public java.lang.String getCoTypes() {
		return this.coTypes;
	}
	public void setCoAttentions(java.lang.String value) {
		this.coAttentions = value;
	}
	
	public java.lang.String getCoAttentions() {
		return this.coAttentions;
	}
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	public void setPriceTip(java.lang.String value) {
		this.priceTip = value;
	}
	
	public java.lang.String getPriceTip() {
		return this.priceTip;
	}
	public void setBigimg1(java.lang.String value) {
		this.bigimg1 = value;
	}
	
	public java.lang.String getBigimg1() {
		return this.bigimg1;
	}
	public void setBigimg2(java.lang.String value) {
		this.bigimg2 = value;
	}
	
	public java.lang.String getBigimg2() {
		return this.bigimg2;
	}
	public void setBigimg3(java.lang.String value) {
		this.bigimg3 = value;
	}
	
	public java.lang.String getBigimg3() {
		return this.bigimg3;
	}
	public void setBigimg4(java.lang.String value) {
		this.bigimg4 = value;
	}
	
	public java.lang.String getBigimg4() {
		return this.bigimg4;
	}
	public void setBigimg5(java.lang.String value) {
		this.bigimg5 = value;
	}
	
	public java.lang.String getBigimg5() {
		return this.bigimg5;
	}
	public void setBigimg6(java.lang.String value) {
		this.bigimg6 = value;
	}
	
	public java.lang.String getBigimg6() {
		return this.bigimg6;
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
			.append("Actname",getActname())
			.append("Closedate",getClosedate())
			.append("Keywords",getKeywords())
			.append("Description",getDescription())
			.append("CoTime",getCoTime())
			.append("CoPosition",getCoPosition())
			.append("BusWay",getBusWay())
			.append("DriveWay",getDriveWay())
			.append("CoProcess1",getCoProcess1())
			.append("CoProcess2",getCoProcess2())
			.append("CoProcess3",getCoProcess3())
			.append("CoProcess4",getCoProcess4())
			.append("CoProcess5",getCoProcess5())
			.append("CoProcess6",getCoProcess6())
			.append("CoProcess7",getCoProcess7())
			.append("CoProcess8",getCoProcess8())
			.append("CoProcess9",getCoProcess9())
			.append("CoProcess10",getCoProcess10())
			.append("CoTypes",getCoTypes())
			.append("CoAttentions",getCoAttentions())
			.append("Price",getPrice())
			.append("PriceTip",getPriceTip())
			.append("Bigimg1",getBigimg1())
			.append("Bigimg2",getBigimg2())
			.append("Bigimg3",getBigimg3())
			.append("Bigimg4",getBigimg4())
			.append("Bigimg5",getBigimg5())
			.append("Bigimg6",getBigimg6())
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
		if(obj instanceof CmsStRehuopai == false) return false;
		if(this == obj) return true;
		CmsStRehuopai other = (CmsStRehuopai)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

