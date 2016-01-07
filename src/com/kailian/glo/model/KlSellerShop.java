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


public class KlSellerShop extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "KlSellerShop";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_USERID = "userid";
	public static final String ALIAS_USER_TYPE = "userType";
	public static final String ALIAS_SHOP_NAME = "shopName";
	public static final String ALIAS_LOGO = "logo";
	public static final String ALIAS_SHOPTYPE = "shoptype";
	public static final String ALIAS_PROVINCEID = "provinceid";
	public static final String ALIAS_PROVINCE = "province";
	public static final String ALIAS_CITYID = "cityid";
	public static final String ALIAS_CITY = "city";
	public static final String ALIAS_QUID = "quid";
	public static final String ALIAS_QU = "qu";
	public static final String ALIAS_REAL_NAME = "realName";
	public static final String ALIAS_ID_NUMBER = "idNumber";
	public static final String ALIAS_ID_PICTURE = "idPicture";
	public static final String ALIAS_ID_PCITURE_BACK = "idPcitureBack";
	public static final String ALIAS_BIRTH_YEAR = "birthYear";
	public static final String ALIAS_BIRTH_MONTH = "birthMonth";
	public static final String ALIAS_BIRTH_DATE = "birthDate";
	public static final String ALIAS_SEX = "sex";
	public static final String ALIAS_PHONENO = "phoneno";
	public static final String ALIAS_EMAIL = "email";
	public static final String ALIAS_ADDRESS = "address";
	public static final String ALIAS_POSTCODE = "postcode";
	public static final String ALIAS_PROFILE = "profile";
	public static final String ALIAS_BANKNAME = "bankname";
	public static final String ALIAS_BANKOPENNAME = "bankopenname";
	public static final String ALIAS_BANKNUMBER = "banknumber";
	public static final String ALIAS_TEMPLATE_ID = "templateId";
	public static final String ALIAS_TEMPLATE = "template";
	public static final String ALIAS_COMPANY_NAME = "companyName";
	public static final String ALIAS_PASSPORT_PICTURE = "passportPicture";
	public static final String ALIAS_ORG_NUMBER = "orgNumber";
	public static final String ALIAS_CREATE_DATE = "createDate";
	public static final String ALIAS_POINT_DESCRIPTION_MATCH = "pointDescriptionMatch";
	public static final String ALIAS_POINT_PERFATIONAL = "pointPerfational";
	public static final String ALIAS_POINT_SERVICE_ATTITUDE = "pointServiceAttitude";
	public static final String ALIAS_POINT_APPOINTMENT_SUCCESSFUL = "pointAppointmentSuccessful";
	public static final String ALIAS_FLOWER_PERCENT = "flowerPercent";
	public static final String ALIAS_SERVED_CLIENTS = "servedClients";
	public static final String ALIAS_SAVED_COUNT = "savedCount";
	public static final String ALIAS_INTRODUCTION = "introduction";
	public static final String ALIAS_SUGGESTREASON = "suggestreason";
	public static final String ALIAS_MORESERVICE = "moreservice";
	public static final String ALIAS_MAPX = "mapx";
	public static final String ALIAS_MAPY = "mapy";
	public static final String ALIAS_MAPIMG = "mapimg";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_ADDITION = "服务设施";
	public static final String ALIAS_CREATETIMELONG = "createtimelong";
	public static final String ALIAS_MODIFYTIMELONG = "modifytimelong";
	public static final String ALIAS_CREATEUSER = "createuser";
	public static final String ALIAS_MODIFYUSER = "modifyuser";
	
	public static final String ALIAS_CLASSTABLE = "classtable";
	public static final String ALIAS_CUSTOMTYPE = "customtype";
	public static final String ALIAS_EXT6 = "其他免费设施";
	public static final String ALIAS_EXT7 = "其他收费设施";
	public static final String ALIAS_EXT8 = "认证文字";
	public static final String ALIAS_EXT9 = "交通方式";
	public static final String ALIAS_EXT10 = "招商联系人";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	
	private java.lang.Long id;
	
	private java.lang.Long userid;
	
	private java.lang.Integer userType;
	@Length(max=100)
	private java.lang.String shopName;
	@Length(max=100)
	private java.lang.String logo;
	
	private java.lang.Integer shoptype;
	
	private java.lang.Long provinceid;
	@Length(max=20)
	private java.lang.String province;
	
	private java.lang.Long cityid;
	@Length(max=20)
	private java.lang.String city;
	
	private java.lang.Long quid;
	@Length(max=20)
	private java.lang.String qu;
	@Length(max=200)
	private java.lang.String realName;
	@Length(max=20)
	private java.lang.String idNumber;
	@Length(max=100)
	private java.lang.String idPicture;
	@Length(max=100)
	private java.lang.String idPcitureBack;
	
	private java.lang.Integer birthYear;
	
	private java.lang.Integer birthMonth;
	
	private java.lang.Integer birthDate;
	
	private java.lang.Integer sex;
	@Length(max=50)
	private java.lang.String phoneno;
	@Email @Length(max=60)
	private java.lang.String email;
	@Length(max=200)
	private java.lang.String address;
	@Length(max=20)
	private java.lang.String postcode;
	@Length(max=65535)
	private java.lang.String profile;
	@Length(max=100)
	private java.lang.String bankname;
	@Length(max=100)
	private java.lang.String bankopenname;
	@Length(max=100)
	private java.lang.String banknumber;
	
	private java.lang.Long templateId;
	@Length(max=100)
	private java.lang.String template;
	@Length(max=200)
	private java.lang.String companyName;
	@Length(max=100)
	private java.lang.String passportPicture;
	@Length(max=100)
	private java.lang.String orgNumber;
	@Length(max=20)
	private java.lang.String createDate;
	
	private java.lang.Float pointDescriptionMatch;
	
	private java.lang.Float pointPerfational;
	
	private java.lang.Float pointServiceAttitude;
	
	private java.lang.Float pointAppointmentSuccessful;
	
	private java.lang.Float flowerPercent;
	
	private java.lang.Integer servedClients;
	
	private java.lang.Integer savedCount;
	@Length(max=65535)
	private java.lang.String introduction;
	@Length(max=65535)
	private java.lang.String suggestreason;
	@Length(max=65535)
	private java.lang.String moreservice;
	
	private java.lang.Float mapx;
	
	private java.lang.Float mapy;
	@Length(max=100)
	private java.lang.String mapimg;
	
	private java.lang.Integer status;
	@Length(max=65535)
	private java.lang.String addition;
	
	private java.lang.Long createtimelong;
	
	private java.lang.Long modifytimelong;
	
	private java.lang.Long createuser;
	
	private java.lang.Long modifyuser;
	private Object createUser;
	
	private java.lang.String weixinimg;
	private java.lang.String weiboimg;

	private List products;
	
	private java.lang.String classtable;
	private java.lang.String customtype;
	private java.lang.String ext6;
	private java.lang.String ext7;
	private java.lang.String ext8;
	private java.lang.String ext9;
	private java.lang.String ext10;
	
	private CmsCommonComment comment;
	// columns END

	public List getProducts() {
		return products;
	}

	public void setProducts(List products) {
		this.products = products;
	}

	public java.lang.String getWeixinimg() {
		return weixinimg;
	}

	public void setWeixinimg(java.lang.String weixinimg) {
		this.weixinimg = weixinimg;
	}

	public java.lang.String getWeiboimg() {
		return weiboimg;
	}

	public void setWeiboimg(java.lang.String weiboimg) {
		this.weiboimg = weiboimg;
	}

	public CmsCommonComment getComment() {
		return comment;
	}

	public void setComment(CmsCommonComment comment) {
		this.comment = comment;
	}

	public Object getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Object createUser) {
		this.createUser = createUser;
	}

	public KlSellerShop(){
	}

	public KlSellerShop(
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
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	public void setUserType(java.lang.Integer value) {
		this.userType = value;
	}
	
	public java.lang.Integer getUserType() {
		return this.userType;
	}
	public void setShopName(java.lang.String value) {
		this.shopName = value;
	}
	
	public java.lang.String getShopName() {
		return this.shopName;
	}
	public void setLogo(java.lang.String value) {
		this.logo = value;
	}
	
	public java.lang.String getLogo() {
		return this.logo;
	}
	public void setShoptype(java.lang.Integer value) {
		this.shoptype = value;
	}
	
	public java.lang.Integer getShoptype() {
		return this.shoptype;
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
	public void setRealName(java.lang.String value) {
		this.realName = value;
	}
	
	public java.lang.String getRealName() {
		return this.realName;
	}
	public void setIdNumber(java.lang.String value) {
		this.idNumber = value;
	}
	
	public java.lang.String getIdNumber() {
		return this.idNumber;
	}
	public void setIdPicture(java.lang.String value) {
		this.idPicture = value;
	}
	
	public java.lang.String getIdPicture() {
		return this.idPicture;
	}
	public void setIdPcitureBack(java.lang.String value) {
		this.idPcitureBack = value;
	}
	
	public java.lang.String getIdPcitureBack() {
		return this.idPcitureBack;
	}
	public void setBirthYear(java.lang.Integer value) {
		this.birthYear = value;
	}
	
	public java.lang.Integer getBirthYear() {
		return this.birthYear;
	}
	public void setBirthMonth(java.lang.Integer value) {
		this.birthMonth = value;
	}
	
	public java.lang.Integer getBirthMonth() {
		return this.birthMonth;
	}
	public void setBirthDate(java.lang.Integer value) {
		this.birthDate = value;
	}
	
	public java.lang.Integer getBirthDate() {
		return this.birthDate;
	}
	public void setSex(java.lang.Integer value) {
		this.sex = value;
	}
	
	public java.lang.Integer getSex() {
		return this.sex;
	}
	public void setPhoneno(java.lang.String value) {
		this.phoneno = value;
	}
	
	public java.lang.String getPhoneno() {
		return this.phoneno;
	}
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	public java.lang.String getAddress() {
		return this.address;
	}
	public void setPostcode(java.lang.String value) {
		this.postcode = value;
	}
	
	public java.lang.String getPostcode() {
		return this.postcode;
	}
	public void setProfile(java.lang.String value) {
		this.profile = value;
	}
	
	public java.lang.String getProfile() {
		return this.profile;
	}
	public void setBankname(java.lang.String value) {
		this.bankname = value;
	}
	
	public java.lang.String getBankname() {
		return this.bankname;
	}
	public void setBankopenname(java.lang.String value) {
		this.bankopenname = value;
	}
	
	public java.lang.String getBankopenname() {
		return this.bankopenname;
	}
	public void setBanknumber(java.lang.String value) {
		this.banknumber = value;
	}
	
	public java.lang.String getBanknumber() {
		return this.banknumber;
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
	public void setCompanyName(java.lang.String value) {
		this.companyName = value;
	}
	
	public java.lang.String getCompanyName() {
		return this.companyName;
	}
	public void setPassportPicture(java.lang.String value) {
		this.passportPicture = value;
	}
	
	public java.lang.String getPassportPicture() {
		return this.passportPicture;
	}
	public void setOrgNumber(java.lang.String value) {
		this.orgNumber = value;
	}
	
	public java.lang.String getOrgNumber() {
		return this.orgNumber;
	}
	public void setCreateDate(java.lang.String value) {
		this.createDate = value;
	}
	
	public java.lang.String getCreateDate() {
		return this.createDate;
	}
	public void setPointDescriptionMatch(java.lang.Float value) {
		this.pointDescriptionMatch = value;
	}
	
	public java.lang.Float getPointDescriptionMatch() {
		return this.pointDescriptionMatch;
	}
	public void setPointPerfational(java.lang.Float value) {
		this.pointPerfational = value;
	}
	
	public java.lang.Float getPointPerfational() {
		return this.pointPerfational;
	}
	public void setPointServiceAttitude(java.lang.Float value) {
		this.pointServiceAttitude = value;
	}
	
	public java.lang.Float getPointServiceAttitude() {
		return this.pointServiceAttitude;
	}
	public void setPointAppointmentSuccessful(java.lang.Float value) {
		this.pointAppointmentSuccessful = value;
	}
	
	public java.lang.Float getPointAppointmentSuccessful() {
		return this.pointAppointmentSuccessful;
	}
	public void setFlowerPercent(java.lang.Float value) {
		this.flowerPercent = value;
	}
	
	public java.lang.Float getFlowerPercent() {
		return this.flowerPercent;
	}
	public void setServedClients(java.lang.Integer value) {
		this.servedClients = value;
	}
	
	public java.lang.Integer getServedClients() {
		return this.servedClients;
	}
	public void setSavedCount(java.lang.Integer value) {
		this.savedCount = value;
	}
	
	public java.lang.Integer getSavedCount() {
		return this.savedCount;
	}
	public void setIntroduction(java.lang.String value) {
		this.introduction = value;
	}
	
	public java.lang.String getIntroduction() {
		return this.introduction;
	}
	public void setSuggestreason(java.lang.String value) {
		this.suggestreason = value;
	}
	
	public java.lang.String getSuggestreason() {
		return this.suggestreason;
	}
	public void setMoreservice(java.lang.String value) {
		this.moreservice = value;
	}
	
	public java.lang.String getMoreservice() {
		return this.moreservice;
	}
	public void setMapx(java.lang.Float value) {
		this.mapx = value;
	}
	
	public java.lang.Float getMapx() {
		return this.mapx;
	}
	public void setMapy(java.lang.Float value) {
		this.mapy = value;
	}
	
	public java.lang.Float getMapy() {
		return this.mapy;
	}
	public void setMapimg(java.lang.String value) {
		this.mapimg = value;
	}
	
	public java.lang.String getMapimg() {
		return this.mapimg;
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

	public java.lang.String getClasstable() {
		return classtable;
	}

	public void setClasstable(java.lang.String classtable) {
		this.classtable = classtable;
	}

	public java.lang.String getCustomtype() {
		return customtype;
	}

	public void setCustomtype(java.lang.String customtype) {
		this.customtype = customtype;
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

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Id",getId())
			.append("Userid",getUserid())
			.append("UserType",getUserType())
			.append("ShopName",getShopName())
			.append("Logo",getLogo())
			.append("Shoptype",getShoptype())
			.append("Provinceid",getProvinceid())
			.append("Province",getProvince())
			.append("Cityid",getCityid())
			.append("City",getCity())
			.append("Quid",getQuid())
			.append("Qu",getQu())
			.append("RealName",getRealName())
			.append("IdNumber",getIdNumber())
			.append("IdPicture",getIdPicture())
			.append("IdPcitureBack",getIdPcitureBack())
			.append("BirthYear",getBirthYear())
			.append("BirthMonth",getBirthMonth())
			.append("BirthDate",getBirthDate())
			.append("Sex",getSex())
			.append("Phoneno",getPhoneno())
			.append("Email",getEmail())
			.append("Address",getAddress())
			.append("Postcode",getPostcode())
			.append("Profile",getProfile())
			.append("Bankname",getBankname())
			.append("Bankopenname",getBankopenname())
			.append("Banknumber",getBanknumber())
			.append("TemplateId",getTemplateId())
			.append("Template",getTemplate())
			.append("CompanyName",getCompanyName())
			.append("PassportPicture",getPassportPicture())
			.append("OrgNumber",getOrgNumber())
			.append("CreateDate",getCreateDate())
			.append("PointDescriptionMatch",getPointDescriptionMatch())
			.append("PointPerfational",getPointPerfational())
			.append("PointServiceAttitude",getPointServiceAttitude())
			.append("PointAppointmentSuccessful",getPointAppointmentSuccessful())
			.append("FlowerPercent",getFlowerPercent())
			.append("ServedClients",getServedClients())
			.append("SavedCount",getSavedCount())
			.append("Introduction",getIntroduction())
			.append("Suggestreason",getSuggestreason())
			.append("Moreservice",getMoreservice())
			.append("Mapx",getMapx())
			.append("Mapy",getMapy())
			.append("Mapimg",getMapimg())
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
		if(obj instanceof KlSellerShop == false) return false;
		if(this == obj) return true;
		KlSellerShop other = (KlSellerShop)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

