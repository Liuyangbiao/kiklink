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


public class KlShoppingShoppingcartproductQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** orderid */
	private java.lang.Long orderid;
	/** shopid */
	private java.lang.Long shopid;
	/** productid */
	private java.lang.Long productid;
	/** productName */
	private java.lang.String productName;
	/** shopName */
	private java.lang.String shopName;
	/** city */
	private java.lang.String city;
	/** classType */
	private java.lang.Integer classType;
	/** classCount */
	private java.lang.Integer classCount;
	/** perPrice */
	private java.lang.Float perPrice;
	/** price */
	private java.lang.Float price;
	/** count */
	private java.lang.Integer count;
	/** couponId */
	private java.lang.Long couponId;
	/** couponPrice */
	private java.lang.Float couponPrice;
	/** progress */
	private java.lang.Integer progress;
	/** status */
	private java.lang.Integer status;	
	private java.lang.Integer statusgt;
	private java.lang.Integer statusne;
	private java.lang.Integer nocommened;
	public java.lang.Integer getNocommened() {
		return nocommened;
	}

	public void setNocommened(java.lang.Integer nocommened) {
		this.nocommened = nocommened;
	}

	public java.lang.Integer getStatusne() {
		return statusne;
	}

	public void setStatusne(java.lang.Integer statusne) {
		this.statusne = statusne;
	}

	public java.lang.Integer getStatusgt() {
		return statusgt;
	}

	public void setStatusgt(java.lang.Integer statusgt) {
		this.statusgt = statusgt;
	}


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
	private java.lang.Integer neextInt4;
	/** extInt5 */
	private java.lang.Integer extInt5;
	/** userid */
	private java.lang.Long userid;
	
	private java.lang.Long createtimelongstart;
	private java.lang.Long createtimelongend;
	
	
	private java.lang.Integer orderStatus;
	private java.lang.Integer orderStatusFrom;
	
	
	private java.lang.Long modifytimelongstart;
	private java.lang.Long modifytimelongend;
	
	public java.lang.Integer getNeextInt4() {
		return neextInt4;
	}

	public void setNeextInt4(java.lang.Integer neextInt4) {
		this.neextInt4 = neextInt4;
	}

	public java.lang.Long getModifytimelongstart() {
		return modifytimelongstart;
	}

	public void setModifytimelongstart(java.lang.Long modifytimelongstart) {
		this.modifytimelongstart = modifytimelongstart;
	}

	public java.lang.Long getModifytimelongend() {
		return modifytimelongend;
	}

	public void setModifytimelongend(java.lang.Long modifytimelongend) {
		this.modifytimelongend = modifytimelongend;
	}

	public java.lang.Integer getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(java.lang.Integer orderStatus) {
		this.orderStatus = orderStatus;
	}

	public java.lang.Integer getOrderStatusFrom() {
		return orderStatusFrom;
	}

	public void setOrderStatusFrom(java.lang.Integer orderStatusFrom) {
		this.orderStatusFrom = orderStatusFrom;
	}

	public java.lang.Long getCreatetimelongstart() {
		return createtimelongstart;
	}

	public void setCreatetimelongstart(java.lang.Long createtimelongstart) {
		this.createtimelongstart = createtimelongstart;
	}

	public java.lang.Long getCreatetimelongend() {
		return createtimelongend;
	}

	public void setCreatetimelongend(java.lang.Long createtimelongend) {
		this.createtimelongend = createtimelongend;
	}
	

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getOrderid() {
		return this.orderid;
	}
	
	public void setOrderid(java.lang.Long value) {
		this.orderid = value;
	}
	
	public java.lang.Long getShopid() {
		return this.shopid;
	}
	
	public void setShopid(java.lang.Long value) {
		this.shopid = value;
	}
	
	public java.lang.Long getProductid() {
		return this.productid;
	}
	
	public void setProductid(java.lang.Long value) {
		this.productid = value;
	}
	
	public java.lang.String getProductName() {
		return this.productName;
	}
	
	public void setProductName(java.lang.String value) {
		this.productName = value;
	}
	
	public java.lang.String getShopName() {
		return this.shopName;
	}
	
	public void setShopName(java.lang.String value) {
		this.shopName = value;
	}
	
	public java.lang.String getCity() {
		return this.city;
	}
	
	public void setCity(java.lang.String value) {
		this.city = value;
	}
	
	public java.lang.Integer getClassType() {
		return this.classType;
	}
	
	public void setClassType(java.lang.Integer value) {
		this.classType = value;
	}
	
	public java.lang.Integer getClassCount() {
		return this.classCount;
	}
	
	public void setClassCount(java.lang.Integer value) {
		this.classCount = value;
	}
	
	public java.lang.Float getPerPrice() {
		return this.perPrice;
	}
	
	public void setPerPrice(java.lang.Float value) {
		this.perPrice = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.Integer getCount() {
		return this.count;
	}
	
	public void setCount(java.lang.Integer value) {
		this.count = value;
	}
	
	public java.lang.Long getCouponId() {
		return this.couponId;
	}
	
	public void setCouponId(java.lang.Long value) {
		this.couponId = value;
	}
	
	public java.lang.Float getCouponPrice() {
		return this.couponPrice;
	}
	
	public void setCouponPrice(java.lang.Float value) {
		this.couponPrice = value;
	}
	
	public java.lang.Integer getProgress() {
		return this.progress;
	}
	
	public void setProgress(java.lang.Integer value) {
		this.progress = value;
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
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

