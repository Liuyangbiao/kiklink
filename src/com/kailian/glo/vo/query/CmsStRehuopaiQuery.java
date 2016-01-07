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


public class CmsStRehuopaiQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** actname */
	private java.lang.String actname;
	/** closedate */
	private java.lang.String closedate;
	/** keywords */
	private java.lang.String keywords;
	/** description */
	private java.lang.String description;
	/** coTime */
	private java.lang.String coTime;
	/** coPosition */
	private java.lang.String coPosition;
	/** busWay */
	private java.lang.String busWay;
	/** driveWay */
	private java.lang.String driveWay;
	/** coProcess1 */
	private java.lang.String coProcess1;
	/** coProcess2 */
	private java.lang.String coProcess2;
	/** coProcess3 */
	private java.lang.String coProcess3;
	/** coProcess4 */
	private java.lang.String coProcess4;
	/** coProcess5 */
	private java.lang.String coProcess5;
	/** coProcess6 */
	private java.lang.String coProcess6;
	/** coProcess7 */
	private java.lang.String coProcess7;
	/** coProcess8 */
	private java.lang.String coProcess8;
	/** coProcess9 */
	private java.lang.String coProcess9;
	/** coProcess10 */
	private java.lang.String coProcess10;
	/** coTypes */
	private java.lang.String coTypes;
	/** coAttentions */
	private java.lang.String coAttentions;
	/** price */
	private java.lang.Float price;
	/** priceTip */
	private java.lang.String priceTip;
	/** bigimg1 */
	private java.lang.String bigimg1;
	/** bigimg2 */
	private java.lang.String bigimg2;
	/** bigimg3 */
	private java.lang.String bigimg3;
	/** bigimg4 */
	private java.lang.String bigimg4;
	/** bigimg5 */
	private java.lang.String bigimg5;
	/** bigimg6 */
	private java.lang.String bigimg6;
	/** ext1 */
	private java.lang.String ext1;
	/** ext2 */
	private java.lang.String ext2;
	/** ext3 */
	private java.lang.String ext3;
	/** ext4 */
	private java.lang.String ext4;
	/** ext5 */
	private java.lang.String ext5;
	/** extInt1 */
	private java.lang.Integer extInt1;
	/** extInt2 */
	private java.lang.Integer extInt2;
	/** extInt3 */
	private java.lang.Integer extInt3;
	/** extInt4 */
	private java.lang.Integer extInt4;
	/** extInt5 */
	private java.lang.Integer extInt5;
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

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getActname() {
		return this.actname;
	}
	
	public void setActname(java.lang.String value) {
		this.actname = value;
	}
	
	public java.lang.String getClosedate() {
		return this.closedate;
	}
	
	public void setClosedate(java.lang.String value) {
		this.closedate = value;
	}
	
	public java.lang.String getKeywords() {
		return this.keywords;
	}
	
	public void setKeywords(java.lang.String value) {
		this.keywords = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getCoTime() {
		return this.coTime;
	}
	
	public void setCoTime(java.lang.String value) {
		this.coTime = value;
	}
	
	public java.lang.String getCoPosition() {
		return this.coPosition;
	}
	
	public void setCoPosition(java.lang.String value) {
		this.coPosition = value;
	}
	
	public java.lang.String getBusWay() {
		return this.busWay;
	}
	
	public void setBusWay(java.lang.String value) {
		this.busWay = value;
	}
	
	public java.lang.String getDriveWay() {
		return this.driveWay;
	}
	
	public void setDriveWay(java.lang.String value) {
		this.driveWay = value;
	}
	
	public java.lang.String getCoProcess1() {
		return this.coProcess1;
	}
	
	public void setCoProcess1(java.lang.String value) {
		this.coProcess1 = value;
	}
	
	public java.lang.String getCoProcess2() {
		return this.coProcess2;
	}
	
	public void setCoProcess2(java.lang.String value) {
		this.coProcess2 = value;
	}
	
	public java.lang.String getCoProcess3() {
		return this.coProcess3;
	}
	
	public void setCoProcess3(java.lang.String value) {
		this.coProcess3 = value;
	}
	
	public java.lang.String getCoProcess4() {
		return this.coProcess4;
	}
	
	public void setCoProcess4(java.lang.String value) {
		this.coProcess4 = value;
	}
	
	public java.lang.String getCoProcess5() {
		return this.coProcess5;
	}
	
	public void setCoProcess5(java.lang.String value) {
		this.coProcess5 = value;
	}
	
	public java.lang.String getCoProcess6() {
		return this.coProcess6;
	}
	
	public void setCoProcess6(java.lang.String value) {
		this.coProcess6 = value;
	}
	
	public java.lang.String getCoProcess7() {
		return this.coProcess7;
	}
	
	public void setCoProcess7(java.lang.String value) {
		this.coProcess7 = value;
	}
	
	public java.lang.String getCoProcess8() {
		return this.coProcess8;
	}
	
	public void setCoProcess8(java.lang.String value) {
		this.coProcess8 = value;
	}
	
	public java.lang.String getCoProcess9() {
		return this.coProcess9;
	}
	
	public void setCoProcess9(java.lang.String value) {
		this.coProcess9 = value;
	}
	
	public java.lang.String getCoProcess10() {
		return this.coProcess10;
	}
	
	public void setCoProcess10(java.lang.String value) {
		this.coProcess10 = value;
	}
	
	public java.lang.String getCoTypes() {
		return this.coTypes;
	}
	
	public void setCoTypes(java.lang.String value) {
		this.coTypes = value;
	}
	
	public java.lang.String getCoAttentions() {
		return this.coAttentions;
	}
	
	public void setCoAttentions(java.lang.String value) {
		this.coAttentions = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.String getPriceTip() {
		return this.priceTip;
	}
	
	public void setPriceTip(java.lang.String value) {
		this.priceTip = value;
	}
	
	public java.lang.String getBigimg1() {
		return this.bigimg1;
	}
	
	public void setBigimg1(java.lang.String value) {
		this.bigimg1 = value;
	}
	
	public java.lang.String getBigimg2() {
		return this.bigimg2;
	}
	
	public void setBigimg2(java.lang.String value) {
		this.bigimg2 = value;
	}
	
	public java.lang.String getBigimg3() {
		return this.bigimg3;
	}
	
	public void setBigimg3(java.lang.String value) {
		this.bigimg3 = value;
	}
	
	public java.lang.String getBigimg4() {
		return this.bigimg4;
	}
	
	public void setBigimg4(java.lang.String value) {
		this.bigimg4 = value;
	}
	
	public java.lang.String getBigimg5() {
		return this.bigimg5;
	}
	
	public void setBigimg5(java.lang.String value) {
		this.bigimg5 = value;
	}
	
	public java.lang.String getBigimg6() {
		return this.bigimg6;
	}
	
	public void setBigimg6(java.lang.String value) {
		this.bigimg6 = value;
	}
	
	public java.lang.String getExt1() {
		return this.ext1;
	}
	
	public void setExt1(java.lang.String value) {
		this.ext1 = value;
	}
	
	public java.lang.String getExt2() {
		return this.ext2;
	}
	
	public void setExt2(java.lang.String value) {
		this.ext2 = value;
	}
	
	public java.lang.String getExt3() {
		return this.ext3;
	}
	
	public void setExt3(java.lang.String value) {
		this.ext3 = value;
	}
	
	public java.lang.String getExt4() {
		return this.ext4;
	}
	
	public void setExt4(java.lang.String value) {
		this.ext4 = value;
	}
	
	public java.lang.String getExt5() {
		return this.ext5;
	}
	
	public void setExt5(java.lang.String value) {
		this.ext5 = value;
	}
	
	public java.lang.Integer getExtInt1() {
		return this.extInt1;
	}
	
	public void setExtInt1(java.lang.Integer value) {
		this.extInt1 = value;
	}
	
	public java.lang.Integer getExtInt2() {
		return this.extInt2;
	}
	
	public void setExtInt2(java.lang.Integer value) {
		this.extInt2 = value;
	}
	
	public java.lang.Integer getExtInt3() {
		return this.extInt3;
	}
	
	public void setExtInt3(java.lang.Integer value) {
		this.extInt3 = value;
	}
	
	public java.lang.Integer getExtInt4() {
		return this.extInt4;
	}
	
	public void setExtInt4(java.lang.Integer value) {
		this.extInt4 = value;
	}
	
	public java.lang.Integer getExtInt5() {
		return this.extInt5;
	}
	
	public void setExtInt5(java.lang.Integer value) {
		this.extInt5 = value;
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
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

