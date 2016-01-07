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


public class KlShoppingCarthistory extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "KlShoppingCarthistory";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_ORDERID = "orderid";
	public static final String ALIAS_SHOPID = "shopid";
	public static final String ALIAS_PRODUCTID = "productid";
	public static final String ALIAS_SHOPCARTID = "shopcartid";
	public static final String ALIAS_PRODUCT_NAME = "productName";
	public static final String ALIAS_SHOP_NAME = "shopName";
	public static final String ALIAS_USERID = "userid";
	public static final String ALIAS_USERNAME = "username";
	public static final String ALIAS_CLASS_COUNT = "classCount";
	public static final String ALIAS_PER_PRICE = "perPrice";
	public static final String ALIAS_PRICE = "price";
	public static final String ALIAS_COUNT = "count";
	public static final String ALIAS_COUPON_ID = "couponId";
	public static final String ALIAS_COUPON_PRICE = "couponPrice";
	public static final String ALIAS_PAYWAY = "payway";
	public static final String ALIAS_PAYBANK = "paybank";
	public static final String ALIAS_PAYUSERNAME = "payusername";
	public static final String ALIAS_PAYACCOUNT = "payaccount";
	public static final String ALIAS_MOBILE = "mobile";
	public static final String ALIAS_EMAIL = "email";
	public static final String ALIAS_SHOPMOBILE = "shopmobile";
	public static final String ALIAS_SHOPEMAIL = "shopemail";
	public static final String ALIAS_PAYFLOWNUMBER = "payflownumber";
	public static final String ALIAS_YUYUEMA = "yuyuema";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_STATUSSTR = "statusstr";
	public static final String ALIAS_ADDITION = "addition";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_EXT1 = "支付流水号";
	public static final String ALIAS_EXT2 = "ext2";
	public static final String ALIAS_EXT3 = "ext3";
	public static final String ALIAS_EXT4 = "ext4";
	public static final String ALIAS_EXT5 = "ext5";
	public static final String ALIAS_EXT_INT1 = "预约时间";
	public static final String ALIAS_EXT_INT2 = "extInt2";
	public static final String ALIAS_EXT_INT3 = "预约日期";
	public static final String ALIAS_EXT_INT4 = "预约状态";
	public static final String ALIAS_EXT_INT5 = "extInt5";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long orderid;
	
	private java.lang.Long shopid;
	
	private java.lang.Long productid;
	
	private java.lang.Long shopcartid;
	@Length(max=100)
	private java.lang.String productName;
	@Length(max=100)
	private java.lang.String shopName;
	
	private java.lang.Long userid;
	@Length(max=100)
	private java.lang.String username;
	
	private java.lang.Integer classCount;
	
	private java.lang.Float perPrice;
	
	private java.lang.Float price;
	
	private java.lang.Integer count;
	
	private java.lang.Long couponId;
	
	private java.lang.Float couponPrice;
	@Length(max=200)
	private java.lang.String payway;
	@Length(max=200)
	private java.lang.String paybank;
	@Length(max=200)
	private java.lang.String payusername;
	@Length(max=200)
	private java.lang.String payaccount;
	@Length(max=20)
	private java.lang.String mobile;
	@Email @Length(max=100)
	private java.lang.String email;
	@Length(max=20)
	private java.lang.String shopmobile;
	@Email @Length(max=100)
	private java.lang.String shopemail;
	@Length(max=200)
	private java.lang.String payflownumber;
	@Length(max=20)
	private java.lang.String yuyuema;
	
	private java.lang.Integer status;
	@Length(max=200)
	private java.lang.String statusstr;
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
	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public KlShoppingCarthistory(){
	}

	public KlShoppingCarthistory(
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
	public void setShopcartid(java.lang.Long value) {
		this.shopcartid = value;
	}
	
	public java.lang.Long getShopcartid() {
		return this.shopcartid;
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
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	public void setUsername(java.lang.String value) {
		this.username = value;
	}
	
	public java.lang.String getUsername() {
		return this.username;
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
	public void setPayway(java.lang.String value) {
		this.payway = value;
	}
	
	public java.lang.String getPayway() {
		return this.payway;
	}
	public void setPaybank(java.lang.String value) {
		this.paybank = value;
	}
	
	public java.lang.String getPaybank() {
		return this.paybank;
	}
	public void setPayusername(java.lang.String value) {
		this.payusername = value;
	}
	
	public java.lang.String getPayusername() {
		return this.payusername;
	}
	public void setPayaccount(java.lang.String value) {
		this.payaccount = value;
	}
	
	public java.lang.String getPayaccount() {
		return this.payaccount;
	}
	public void setMobile(java.lang.String value) {
		this.mobile = value;
	}
	
	public java.lang.String getMobile() {
		return this.mobile;
	}
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	public void setShopmobile(java.lang.String value) {
		this.shopmobile = value;
	}
	
	public java.lang.String getShopmobile() {
		return this.shopmobile;
	}
	public void setShopemail(java.lang.String value) {
		this.shopemail = value;
	}
	
	public java.lang.String getShopemail() {
		return this.shopemail;
	}
	public void setPayflownumber(java.lang.String value) {
		this.payflownumber = value;
	}
	
	public java.lang.String getPayflownumber() {
		return this.payflownumber;
	}
	public void setYuyuema(java.lang.String value) {
		this.yuyuema = value;
	}
	
	public java.lang.String getYuyuema() {
		return this.yuyuema;
	}
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
	public java.lang.Integer getStatus() {
		return this.status;
	}
	public void setStatusstr(java.lang.String value) {
		this.statusstr = value;
	}
	
	public java.lang.String getStatusstr() {
		return this.statusstr;
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

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Orderid",getOrderid())
			.append("Shopid",getShopid())
			.append("Productid",getProductid())
			.append("Shopcartid",getShopcartid())
			.append("ProductName",getProductName())
			.append("ShopName",getShopName())
			.append("Userid",getUserid())
			.append("Username",getUsername())
			.append("ClassCount",getClassCount())
			.append("PerPrice",getPerPrice())
			.append("Price",getPrice())
			.append("Count",getCount())
			.append("CouponId",getCouponId())
			.append("CouponPrice",getCouponPrice())
			.append("Payway",getPayway())
			.append("Paybank",getPaybank())
			.append("Payusername",getPayusername())
			.append("Payaccount",getPayaccount())
			.append("Mobile",getMobile())
			.append("Email",getEmail())
			.append("Shopmobile",getShopmobile())
			.append("Shopemail",getShopemail())
			.append("Payflownumber",getPayflownumber())
			.append("Yuyuema",getYuyuema())
			.append("Status",getStatus())
			.append("Statusstr",getStatusstr())
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
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof KlShoppingCarthistory == false) return false;
		if(this == obj) return true;
		KlShoppingCarthistory other = (KlShoppingCarthistory)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
	
	
	
	public static KlShoppingCarthistory getHistory(KlShoppingShoppingcartproduct p) {
		KlShoppingCarthistory h = new KlShoppingCarthistory();
		h.setOrderid(p.getOrderid());
		h.setShopid(p.getShopid());
		h.setProductid(p.getProductid());
		h.setShopcartid(p.getId());
		h.setProductName(p.getProductName());
		h.setShopName(p.getShopName());
		h.setUserid(p.getUserid());
		h.setUsername(p.getExt1());
		h.setClassCount(p.getClassCount());
		h.setPerPrice(p.getPerPrice());
		h.setPrice(p.getPrice());
		h.setCount(p.getCount());
		h.setCouponId(p.getCouponId());
		h.setCouponPrice(p.getCouponPrice());
		
		h.setYuyuema(p.getExtInt5() + "");
		h.setStatus(p.getStatus());
		
		h.setExtInt1(p.getExtInt1());
		h.setExtInt3(p.getExtInt3());
		h.setExtInt4(p.getExtInt4());
		
		h.setCreatetimelong(System.currentTimeMillis());
		
		return h;
	}
	
	public static KlShoppingCarthistory getHistory(KlShoppingCard ksc) {
		KlShoppingCarthistory h = new KlShoppingCarthistory();
		h.setOrderid(ksc.getOrder_id());
//		h.setShopid(new Long("0"));
		h.setProductid(ksc.getCardid());
		h.setShopcartid(ksc.getId());
		h.setProductName(ksc.getCardtype());
//		h.setShopName(p.getShopName());
		h.setUserid(ksc.getUserid());
//		h.setUsername(p.getExt1());
//		h.setClassCount(p.getClassCount());
		h.setPerPrice(ksc.getCardprice());
		h.setPrice(ksc.getCardprice());
		h.setCount(1);
//		h.setCouponId(p.getCouponId());
//		h.setCouponPrice(p.getCouponPrice());
//		
//		h.setYuyuema(p.getExtInt5() + "");
		h.setStatus(ksc.getStatus());
//		
//		h.setExtInt1(p.getExtInt1());
//		h.setExtInt3(p.getExtInt3());
//		h.setExtInt4(p.getExtInt4());
		
		h.setCreatetimelong(System.currentTimeMillis());
		
		return h;
	}
}

















