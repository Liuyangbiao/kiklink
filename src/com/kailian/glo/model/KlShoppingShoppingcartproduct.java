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


public class KlShoppingShoppingcartproduct extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "KlShoppingShoppingcartproduct";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_ORDERID = "orderid";
	public static final String ALIAS_SHOPID = "shopid";
	public static final String ALIAS_PRODUCTID = "productid";
	public static final String ALIAS_PRODUCT_NAME = "productName";
	public static final String ALIAS_SHOP_NAME = "shopName";
	public static final String ALIAS_CITY = "city";
	public static final String ALIAS_CLASS_TYPE = "classType";
	public static final String ALIAS_CLASS_COUNT = "classCount";
	public static final String ALIAS_PER_PRICE = "perPrice";
	public static final String ALIAS_PRICE = "price";
	public static final String ALIAS_COUNT = "count";
	public static final String ALIAS_COUPON_ID = "couponId";
	public static final String ALIAS_COUPON_PRICE = "couponPrice";
	public static final String ALIAS_PROGRESS = "progress";
	public static final String ALIAS_STATUS = "status";//15 已退款
	public static final String ALIAS_ADDITION = "产品说明、拒绝原因";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_EXT1 = "用户名";
	public static final String ALIAS_EXT2 = "授课地点";
	public static final String ALIAS_EXT3 = "联系方式";
	public static final String ALIAS_EXT4 = "商家提现的支付id";
	public static final String ALIAS_EXT5 = "产品照片";
	public static final String ALIAS_EXT_INT1 = "预约时间开始";
	public static final String ALIAS_EXT_INT2 = "预约时间结束";
	public static final String ALIAS_EXT_INT3 = "预约日期";
	public static final String ALIAS_EXT_INT4 = "预约状态";
	public static final String ALIAS_EXT_INT5 = "预约码";
	public static final String ALIAS_USERID = "userid";
	public static final String ALIAS_HASHTRAINSUMMARY = "是否有训练记录";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long orderid;
	
	private java.lang.Long shopid;
	
	private java.lang.Long productid;
	@Length(max=100)
	private java.lang.String productName;
	@Length(max=100)
	private java.lang.String shopName;
	@Length(max=100)
	private java.lang.String city;
	
	private java.lang.Integer classType;
	
	private java.lang.Integer classCount;
	
	private java.lang.Float perPrice;
	
	private java.lang.Float price;
	
	private java.lang.Integer count;
	
	private java.lang.Long couponId;
	
	private java.lang.Float couponPrice;
	
	private java.lang.Integer progress;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
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
	
	private java.lang.Long userid;
	private Object createUser;
	private java.lang.Integer hastrainsummary;
	// columns END

	public java.lang.Integer getHastrainsummary() {
		return hastrainsummary;
	}

	public void setHastrainsummary(java.lang.Integer hastrainsummary) {
		this.hastrainsummary = hastrainsummary;
	}

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public KlShoppingShoppingcartproduct(){
	}

	public KlShoppingShoppingcartproduct(
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
	public void setOrderid(java.lang.Long value) {
		this.orderid = value;
	}
	
	public java.lang.Long getOrderid() {
		return this.orderid;
	}
	public void setShopid(java.lang.Long value) {
		this.shopid = value;
	}
	
	public java.lang.Long getShopid() {
		return this.shopid;
	}
	public void setProductid(java.lang.Long value) {
		this.productid = value;
	}
	
	public java.lang.Long getProductid() {
		return this.productid;
	}
	public void setProductName(java.lang.String value) {
		this.productName = value;
	}
	
	public java.lang.String getProductName() {
		return this.productName;
	}
	public void setShopName(java.lang.String value) {
		this.shopName = value;
	}
	
	public java.lang.String getShopName() {
		return this.shopName;
	}
	public void setCity(java.lang.String value) {
		this.city = value;
	}
	
	public java.lang.String getCity() {
		return this.city;
	}
	public void setClassType(java.lang.Integer value) {
		this.classType = value;
	}
	
	public java.lang.Integer getClassType() {
		return this.classType;
	}
	public void setClassCount(java.lang.Integer value) {
		this.classCount = value;
	}
	
	public java.lang.Integer getClassCount() {
		return this.classCount;
	}
	public void setPerPrice(java.lang.Float value) {
		this.perPrice = value;
	}
	
	public java.lang.Float getPerPrice() {
		return this.perPrice;
	}
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	public void setCount(java.lang.Integer value) {
		this.count = value;
	}
	
	public java.lang.Integer getCount() {
		return this.count;
	}
	public void setCouponId(java.lang.Long value) {
		this.couponId = value;
	}
	
	public java.lang.Long getCouponId() {
		return this.couponId;
	}
	public void setCouponPrice(java.lang.Float value) {
		this.couponPrice = value;
	}
	
	public java.lang.Float getCouponPrice() {
		return this.couponPrice;
	}
	public void setProgress(java.lang.Integer value) {
		this.progress = value;
	}
	
	public java.lang.Integer getProgress() {
		return this.progress;
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
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Orderid",getOrderid())
			.append("Shopid",getShopid())
			.append("Productid",getProductid())
			.append("ProductName",getProductName())
			.append("ShopName",getShopName())
			.append("City",getCity())
			.append("ClassType",getClassType())
			.append("ClassCount",getClassCount())
			.append("PerPrice",getPerPrice())
			.append("Price",getPrice())
			.append("Count",getCount())
			.append("CouponId",getCouponId())
			.append("CouponPrice",getCouponPrice())
			.append("Progress",getProgress())
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
			.append("ExtInt1",getExtInt1())
			.append("ExtInt2",getExtInt2())
			.append("ExtInt3",getExtInt3())
			.append("ExtInt4",getExtInt4())
			.append("ExtInt5",getExtInt5())
			.append("Userid",getUserid())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof KlShoppingShoppingcartproduct == false) return false;
		if(this == obj) return true;
		KlShoppingShoppingcartproduct other = (KlShoppingShoppingcartproduct)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

