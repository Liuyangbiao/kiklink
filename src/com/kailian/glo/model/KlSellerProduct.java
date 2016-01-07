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
import com.yebucuo.spring.SpringContext;
import com.yebucuo.util.Utils;

/**
 * @author  wangdapeng
 * @version 1.0
 * @since 1.0
 */


public class KlSellerProduct extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "KlSellerProduct";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_SHOP_ID = "shopId";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_PRICE = "price";
	public static final String ALIAS_CLASS_COUNT = "classCount";
	public static final String ALIAS_PER_CLASS_MINUTES = "perClassMinutes";
	public static final String ALIAS_CATEGORYID = "categoryid";
	public static final String ALIAS_VALID_DAYS = "validDays";
	public static final String ALIAS_TEACH_TYPE = "teachType";
	public static final String ALIAS_RETURN_CLASS_COUNT = "returnClassCount";
	public static final String ALIAS_PHOTO = "photo";
	public static final String ALIAS_PROVINCEID = "provinceid";
	public static final String ALIAS_PROVINCE = "province";
	public static final String ALIAS_CITYID = "cityid";
	public static final String ALIAS_CITY = "city";
	public static final String ALIAS_QUID = "quid";
	public static final String ALIAS_QU = "qu";
	public static final String ALIAS_QUANID = "quanid";
	public static final String ALIAS_QUAN = "quan";
	public static final String ALIAS_GOTO_HOME = "gotoHome";
	public static final String ALIAS_PLACE_PRICE_INCLUED = "placePriceInclued";
	public static final String ALIAS_PLACE_ADDITION = "placeAddition";
	public static final String ALIAS_ALL_CONSULTING = "allConsulting";
	public static final String ALIAS_FREE_CONSULTING = "freeConsulting";
	public static final String ALIAS_DESCRIPTION = "基本信息";
	public static final String ALIAS_TAGS = "tags";
	public static final String ALIAS_SAVED_COUNT = "savedCount";
	public static final String ALIAS_BUYED_COUNT = "buyedCount";
	public static final String ALIAS_FLOWER_COUNT = "flowerCount";
	public static final String ALIAS_EGG_COUNT = "eggCount";
	public static final String ALIAS_MIDDLE_COUNT = "middleCount";
	public static final String ALIAS_TEMPLATE_ID = "templateId";
	public static final String ALIAS_TEMPLATE = "template";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "详细信息";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	public static final String ALIAS_EXT1 = "详细地址";
	public static final String ALIAS_EXT2 = "地图坐标";
	public static final String ALIAS_EXT3 = "预约码";
	public static final String ALIAS_EXT4 = "教练列表";
	public static final String ALIAS_EXT5 = "店名";
	public static final String ALIAS_EXT_INT1 = "课程类型";
	public static final String ALIAS_EXT_INT2 = "评价数量";
	public static final String ALIAS_EXT_INT3 = "权重";
	public static final String ALIAS_EXT_INT4 = "首页权重";
	public static final String ALIAS_EXT_INT5 = "提前几天预约";
	
	public static final String ALIAS_SUBNAME = "subname";
	public static final String ALIAS_EXT6 = "频道权重";
	public static final String ALIAS_EXT7 = "搜索权重";
	public static final String ALIAS_EXT8 = "单节课时长";
	public static final String ALIAS_EXT9 = "ext9";
	public static final String ALIAS_EXT10 = "距离";
	public CmsCommonComment comment;
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	public CmsCommonComment getComment() {
		return comment;
	}

	public void setComment(CmsCommonComment comment) {
		this.comment = comment;
	}

	private java.lang.Long id;
	
	private java.lang.Long shopId;
	@Length(max=100)
	private java.lang.String name;
	
	private java.lang.Float price;
	
	private java.lang.Integer classCount;
	
	private java.lang.Integer perClassMinutes;
	
	private java.lang.Long categoryid;
	
	private java.lang.Integer validDays;
	
	private java.lang.Integer teachType;
	
	private java.lang.Integer returnClassCount;
	@Length(max=60)
	private java.lang.String photo;
	
	private java.lang.Long provinceid;
	@Length(max=20)
	private java.lang.String province;
	
	private java.lang.Long cityid;
	@Length(max=20)
	private java.lang.String city;
	
	private java.lang.Long quid;
	@Length(max=20)
	private java.lang.String qu;
	
	private java.lang.Long quanid;
	@Length(max=20)
	private java.lang.String quan;
	
	private java.lang.Integer gotoHome;
	
	private java.lang.Integer placePriceInclued;
	@Length(max=65535)
	private java.lang.String placeAddition;
	
	private java.lang.Integer allConsulting;
	
	private java.lang.Integer freeConsulting;
	@Length(max=2147483647)
	private java.lang.String description;
	@Length(max=65535)
	private java.lang.String tags;
	
	private java.lang.Integer savedCount;
	
	private java.lang.Integer buyedCount;
	
	private java.lang.Integer flowerCount;
	
	private java.lang.Integer eggCount;
	
	private java.lang.Integer middleCount;
	
	private java.lang.Long templateId;
	@Length(max=100)
	private java.lang.String template;
	
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
	private java.lang.Float mapx;
	private java.lang.Float mapy;
	
	private java.lang.String ext6;
	private java.lang.String ext7;
	private java.lang.String ext8;
	private java.lang.String ext9;
	private java.lang.String ext10;
	private java.lang.String subname;
	
	
	
	public java.lang.String getSubname() {
		return subname;
	}

	public void setSubname(java.lang.String subname) {
		this.subname = subname;
	}

	public java.lang.String getExt6() {
		return ext6;
	}

	public void setExt6(java.lang.String ext6) {
		this.ext6 = ext6;
	}

	public java.lang.String getExt7() {
		return ext7;
	}

	public void setExt7(java.lang.String ext7) {
		this.ext7 = ext7;
	}

	public java.lang.String getExt8() {
		return ext8;
	}

	public void setExt8(java.lang.String ext8) {
		this.ext8 = ext8;
	}

	public java.lang.String getExt9() {
		return ext9;
	}

	public void setExt9(java.lang.String ext9) {
		this.ext9 = ext9;
	}

	public java.lang.String getExt10() {
		return ext10;
	}

	public void setExt10(java.lang.String ext10) {
		this.ext10 = ext10;
	}


	
	public java.lang.Float getMapx() {
		return mapx;
	}

	public void setMapx(java.lang.Float mapx) {
		this.mapx = mapx;
	}

	public java.lang.Float getMapy() {
		return mapy;
	}

	public void setMapy(java.lang.Float mapy) {
		this.mapy = mapy;
	}

	private Object createUser;

	// columns END

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public KlSellerProduct(){
	}

	public KlSellerProduct(
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
	public void setShopId(java.lang.Long value) {
		this.shopId = value;
	}
	
	public java.lang.Long getShopId() {
		return this.shopId;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	public void setClassCount(java.lang.Integer value) {
		this.classCount = value;
	}
	
	public java.lang.Integer getClassCount() {
		return this.classCount;
	}
	public void setPerClassMinutes(java.lang.Integer value) {
		this.perClassMinutes = value;
	}
	
	public java.lang.Integer getPerClassMinutes() {
		return this.perClassMinutes;
	}
	public void setCategoryid(java.lang.Long value) {
		this.categoryid = value;
	}
	
	public java.lang.Long getCategoryid() {
		return this.categoryid;
	}
	public void setValidDays(java.lang.Integer value) {
		this.validDays = value;
	}
	
	public java.lang.Integer getValidDays() {
		return this.validDays;
	}
	public void setTeachType(java.lang.Integer value) {
		this.teachType = value;
	}
	
	public java.lang.Integer getTeachType() {
		return this.teachType;
	}
	public void setReturnClassCount(java.lang.Integer value) {
		this.returnClassCount = value;
	}
	
	public java.lang.Integer getReturnClassCount() {
		return this.returnClassCount;
	}
	public void setPhoto(java.lang.String value) {
		this.photo = value;
	}
	
	public java.lang.String getPhoto() {
		return this.photo;
	}
	public void setProvinceid(java.lang.Long value) {
		this.provinceid = value;
	}
	
	public java.lang.Long getProvinceid() {
		return this.provinceid;
	}
	public void setProvince(java.lang.String value) {
		this.province = value;
	}
	
	public java.lang.String getProvince() {
		return this.province;
	}
	public void setCityid(java.lang.Long value) {
		this.cityid = value;
	}
	
	public java.lang.Long getCityid() {
		return this.cityid;
	}
	public void setCity(java.lang.String value) {
		this.city = value;
	}
	
	public java.lang.String getCity() {
		return this.city;
	}
	public void setQuid(java.lang.Long value) {
		this.quid = value;
	}
	
	public java.lang.Long getQuid() {
		return this.quid;
	}
	public void setQu(java.lang.String value) {
		this.qu = value;
	}
	
	public java.lang.String getQu() {
		return this.qu;
	}
	public void setQuanid(java.lang.Long value) {
		this.quanid = value;
	}
	
	public java.lang.Long getQuanid() {
		return this.quanid;
	}
	public void setQuan(java.lang.String value) {
		this.quan = value;
	}
	
	public java.lang.String getQuan() {
		return this.quan;
	}
	public void setGotoHome(java.lang.Integer value) {
		this.gotoHome = value;
	}
	
	public java.lang.Integer getGotoHome() {
		return this.gotoHome;
	}
	public void setPlacePriceInclued(java.lang.Integer value) {
		this.placePriceInclued = value;
	}
	
	public java.lang.Integer getPlacePriceInclued() {
		return this.placePriceInclued;
	}
	public void setPlaceAddition(java.lang.String value) {
		this.placeAddition = value;
	}
	
	public java.lang.String getPlaceAddition() {
		return this.placeAddition;
	}
	public void setAllConsulting(java.lang.Integer value) {
		this.allConsulting = value;
	}
	
	public java.lang.Integer getAllConsulting() {
		return this.allConsulting;
	}
	public void setFreeConsulting(java.lang.Integer value) {
		this.freeConsulting = value;
	}
	
	public java.lang.Integer getFreeConsulting() {
		return this.freeConsulting;
	}
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	public void setTags(java.lang.String value) {
		this.tags = value;
	}
	
	public java.lang.String getTags() {
		return this.tags;
	}
	public void setSavedCount(java.lang.Integer value) {
		this.savedCount = value;
	}
	
	public java.lang.Integer getSavedCount() {
		return this.savedCount;
	}
	public void setBuyedCount(java.lang.Integer value) {
		this.buyedCount = value;
	}
	
	public java.lang.Integer getBuyedCount() {
		return this.buyedCount;
	}
	public void setFlowerCount(java.lang.Integer value) {
		this.flowerCount = value;
	}
	
	public java.lang.Integer getFlowerCount() {
		return this.flowerCount;
	}
	public void setEggCount(java.lang.Integer value) {
		this.eggCount = value;
	}
	
	public java.lang.Integer getEggCount() {
		return this.eggCount;
	}
	public void setMiddleCount(java.lang.Integer value) {
		this.middleCount = value;
	}
	
	public java.lang.Integer getMiddleCount() {
		return this.middleCount;
	}
	public void setTemplateId(java.lang.Long value) {
		this.templateId = value;
	}
	
	public java.lang.Long getTemplateId() {
		return this.templateId;
	}
	public void setTemplate(java.lang.String value) {
		this.template = value;
	}
	
	public java.lang.String getTemplate() {
		return this.template;
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

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("ShopId",getShopId())
			.append("Name",getName())
			.append("Price",getPrice())
			.append("ClassCount",getClassCount())
			.append("PerClassMinutes",getPerClassMinutes())
			.append("Categoryid",getCategoryid())
			.append("ValidDays",getValidDays())
			.append("TeachType",getTeachType())
			.append("ReturnClassCount",getReturnClassCount())
			.append("Photo",getPhoto())
			.append("Provinceid",getProvinceid())
			.append("Province",getProvince())
			.append("Cityid",getCityid())
			.append("City",getCity())
			.append("Quid",getQuid())
			.append("Qu",getQu())
			.append("Quanid",getQuanid())
			.append("Quan",getQuan())
			.append("GotoHome",getGotoHome())
			.append("PlacePriceInclued",getPlacePriceInclued())
			.append("PlaceAddition",getPlaceAddition())
			.append("AllConsulting",getAllConsulting())
			.append("FreeConsulting",getFreeConsulting())
			.append("Description",getDescription())
			.append("Tags",getTags())
			.append("SavedCount",getSavedCount())
			.append("BuyedCount",getBuyedCount())
			.append("FlowerCount",getFlowerCount())
			.append("EggCount",getEggCount())
			.append("MiddleCount",getMiddleCount())
			.append("TemplateId",getTemplateId())
			.append("Template",getTemplate())
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
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof KlSellerProduct == false) return false;
		if(this == obj) return true;
		KlSellerProduct other = (KlSellerProduct)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
	
	/*
	 * 设置地名
	 */
	public void placeName() {
		ICtUserProvinceManager ctUserProvinceManager  = (ICtUserProvinceManager) SpringContext.getBean("ctUserProvinceManager");
		ICtUserCityManager ctUserCityManager  = (ICtUserCityManager) SpringContext.getBean("ctUserCityManager");
		ICtUserQuManager ctUserQuManager  = (ICtUserQuManager) SpringContext.getBean("ctUserQuManager");

		if (this.getProvinceid() != null)
		{
			CtUserProvince p = ctUserProvinceManager.getById(this.getProvinceid());
			if (p != null)
				this.setProvince(p.getName());
		}
		
		if (this.getCityid() != null)
		{
			CtUserCity p = ctUserCityManager.getById(this.getCityid());
			if (p != null)
				this.setCity(p.getName());
		}
		
		if (this.getQuid() != null)
		{
			CtUserQu p = ctUserQuManager.getById(this.getQuid());
			if (p != null)
				this.setQu(p.getName());
		}
		
	}
	
	
	
	
	
	
	
	
	
}

