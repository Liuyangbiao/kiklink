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


public class KlShoppingCardQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** order_id */
	private java.lang.Long order_id;
	/** count */
	private java.lang.Integer count;
	/** shopid */
	private java.lang.Long shopid;
	/** productid */
	private java.lang.Long productid;
	/** productName */
	private java.lang.String productName;
	/** shopName */
	private java.lang.String shopName;
	/** classType */
	private java.lang.Integer classType;
	/** classCount */
	private java.lang.Integer classCount;
	/** perPrice */
	private java.lang.Float perPrice;
	/** price */
	private java.lang.Float price;
	/** cardNo */
	private java.lang.String cardNo;
	/** cardPwd */
	private java.lang.String cardPwd;
	/** overdue */
	private java.util.Date overdueBegin;
	private java.util.Date overdueEnd;
	/** balance */
	private java.lang.Float balance;
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
	/** userid */
	private java.lang.Long userid;
	private java.lang.Integer cardtype;
	private java.lang.Float cardprice;
	private java.lang.Long cardid;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public java.lang.Long getorder_id() {
		return order_id;
	}

	public void setorder_id(java.lang.Long order_id) {
		this.order_id = order_id;
	}

	public java.lang.Long getUserid() {
		return userid;
	}

	public void setUserid(java.lang.Long userid) {
		this.userid = userid;
	}

	public java.lang.Float getPrice() {
		return price;
	}

	public void setPrice(java.lang.Float price) {
		this.price = price;
	}

	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.String getCardNo() {
		return this.cardNo;
	}
	
	public void setCardNo(java.lang.String value) {
		this.cardNo = value;
	}
	
	public java.lang.String getCardPwd() {
		return this.cardPwd;
	}
	
	public void setCardPwd(java.lang.String value) {
		this.cardPwd = value;
	}
	
	public java.util.Date getOverdueBegin() {
		return this.overdueBegin;
	}
	
	public void setOverdueBegin(java.util.Date value) {
		this.overdueBegin = value;
	}	
	
	public java.util.Date getOverdueEnd() {
		return this.overdueEnd;
	}
	
	public void setOverdueEnd(java.util.Date value) {
		this.overdueEnd = value;
	}
	
	public java.lang.Float getBalance() {
		return this.balance;
	}
	
	public void setBalance(java.lang.Float value) {
		this.balance = value;
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
	
	public java.lang.Integer getCardtype() {
		return this.cardtype;
	}
	public void setCardtype(java.lang.Integer value) {
		this.cardtype = value;
	}
	public java.lang.Float getCardprice() {
		return this.cardprice;
	}
	public void setCardprice(java.lang.Float value) {
		this.cardprice = value;
	}
	public java.lang.Long getCardid() {
		return this.cardid;
	}
	public void setCardid(java.lang.Long value) {
		this.cardid = value;
	}

	public java.lang.Long getShopid() {
		return shopid;
	}

	public void setShopid(java.lang.Long shopid) {
		this.shopid = shopid;
	}

	public java.lang.Long getProductid() {
		return productid;
	}

	public void setProductid(java.lang.Long productid) {
		this.productid = productid;
	}

	public java.lang.String getProductName() {
		return productName;
	}

	public void setProductName(java.lang.String productName) {
		this.productName = productName;
	}

	public java.lang.String getShopName() {
		return shopName;
	}

	public void setShopName(java.lang.String shopName) {
		this.shopName = shopName;
	}

	public java.lang.Integer getClassType() {
		return classType;
	}

	public void setClassType(java.lang.Integer classType) {
		this.classType = classType;
	}

	public java.lang.Integer getClassCount() {
		return classCount;
	}

	public void setClassCount(java.lang.Integer classCount) {
		this.classCount = classCount;
	}

	public java.lang.Float getPerPrice() {
		return perPrice;
	}

	public void setPerPrice(java.lang.Float perPrice) {
		this.perPrice = perPrice;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}

	public java.lang.Integer getCount() {
		return count;
	}

	public void setCount(java.lang.Integer count) {
		this.count = count;
	}
	
}

