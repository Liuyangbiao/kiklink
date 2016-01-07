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


public class KlSellerShopQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** userid */
	private java.lang.Long userid;
	/** userType */
	private java.lang.Integer userType;
	/** shopName */
	private java.lang.String shopName;
	/** logo */
	private java.lang.String logo;
	/** shoptype */
	private java.lang.Integer shoptype;
	/** provinceid */
	private java.lang.Long provinceid;
	/** province */
	private java.lang.String province;
	/** cityid */
	private java.lang.Long cityid;
	/** city */
	private java.lang.String city;
	/** quid */
	private java.lang.Long quid;
	/** qu */
	private java.lang.String qu;
	/** realName */
	private java.lang.String realName;
	/** idNumber */
	private java.lang.String idNumber;
	/** idPicture */
	private java.lang.String idPicture;
	/** idPcitureBack */
	private java.lang.String idPcitureBack;
	/** birthYear */
	private java.lang.Integer birthYear;
	/** birthMonth */
	private java.lang.Integer birthMonth;
	/** birthDate */
	private java.lang.Integer birthDate;
	/** sex */
	private java.lang.Integer sex;
	/** phoneno */
	private java.lang.String phoneno;
	/** email */
	private java.lang.String email;
	/** address */
	private java.lang.String address;
	/** postcode */
	private java.lang.String postcode;
	/** profile */
	private java.lang.String profile;
	/** bankname */
	private java.lang.String bankname;
	/** bankopenname */
	private java.lang.String bankopenname;
	/** banknumber */
	private java.lang.String banknumber;
	/** templateId */
	private java.lang.Long templateId;
	/** template */
	private java.lang.String template;
	/** companyName */
	private java.lang.String companyName;
	/** passportPicture */
	private java.lang.String passportPicture;
	/** orgNumber */
	private java.lang.String orgNumber;
	/** createDate */
	private java.lang.String createDate;
	/** pointDescriptionMatch */
	private java.lang.Float pointDescriptionMatch;
	/** pointPerfational */
	private java.lang.Float pointPerfational;
	/** pointServiceAttitude */
	private java.lang.Float pointServiceAttitude;
	/** pointAppointmentSuccessful */
	private java.lang.Float pointAppointmentSuccessful;
	/** flowerPercent */
	private java.lang.Float flowerPercent;
	/** servedClients */
	private java.lang.Integer servedClients;
	/** savedCount */
	private java.lang.Integer savedCount;
	/** introduction */
	private java.lang.String introduction;
	/** suggestreason */
	private java.lang.String suggestreason;
	/** moreservice */
	private java.lang.String moreservice;
	/** mapx */
	private java.lang.Float mapx;
	/** mapy */
	private java.lang.Float mapy;
	/** mapimg */
	private java.lang.String mapimg;
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
	private java.lang.String classtable;
	private java.lang.String customtype;
	private java.lang.String ext6;
	private java.lang.String ext7;
	private java.lang.String ext8;
	private java.lang.String ext9;
	private java.lang.String ext10;
	
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

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getUserid() {
		return this.userid;
	}
	
	public void setUserid(java.lang.Long value) {
		this.userid = value;
	}
	
	public java.lang.Integer getUserType() {
		return this.userType;
	}
	
	public void setUserType(java.lang.Integer value) {
		this.userType = value;
	}
	
	public java.lang.String getShopName() {
		return this.shopName;
	}
	
	public void setShopName(java.lang.String value) {
		this.shopName = value;
	}
	
	public java.lang.String getLogo() {
		return this.logo;
	}
	
	public void setLogo(java.lang.String value) {
		this.logo = value;
	}
	
	public java.lang.Integer getShoptype() {
		return this.shoptype;
	}
	
	public void setShoptype(java.lang.Integer value) {
		this.shoptype = value;
	}
	
	public java.lang.Long getProvinceid() {
		return this.provinceid;
	}
	
	public void setProvinceid(java.lang.Long value) {
		this.provinceid = value;
	}
	
	public java.lang.String getProvince() {
		return this.province;
	}
	
	public void setProvince(java.lang.String value) {
		this.province = value;
	}
	
	public java.lang.Long getCityid() {
		return this.cityid;
	}
	
	public void setCityid(java.lang.Long value) {
		this.cityid = value;
	}
	
	public java.lang.String getCity() {
		return this.city;
	}
	
	public void setCity(java.lang.String value) {
		this.city = value;
	}
	
	public java.lang.Long getQuid() {
		return this.quid;
	}
	
	public void setQuid(java.lang.Long value) {
		this.quid = value;
	}
	
	public java.lang.String getQu() {
		return this.qu;
	}
	
	public void setQu(java.lang.String value) {
		this.qu = value;
	}
	
	public java.lang.String getRealName() {
		return this.realName;
	}
	
	public void setRealName(java.lang.String value) {
		this.realName = value;
	}
	
	public java.lang.String getIdNumber() {
		return this.idNumber;
	}
	
	public void setIdNumber(java.lang.String value) {
		this.idNumber = value;
	}
	
	public java.lang.String getIdPicture() {
		return this.idPicture;
	}
	
	public void setIdPicture(java.lang.String value) {
		this.idPicture = value;
	}
	
	public java.lang.String getIdPcitureBack() {
		return this.idPcitureBack;
	}
	
	public void setIdPcitureBack(java.lang.String value) {
		this.idPcitureBack = value;
	}
	
	public java.lang.Integer getBirthYear() {
		return this.birthYear;
	}
	
	public void setBirthYear(java.lang.Integer value) {
		this.birthYear = value;
	}
	
	public java.lang.Integer getBirthMonth() {
		return this.birthMonth;
	}
	
	public void setBirthMonth(java.lang.Integer value) {
		this.birthMonth = value;
	}
	
	public java.lang.Integer getBirthDate() {
		return this.birthDate;
	}
	
	public void setBirthDate(java.lang.Integer value) {
		this.birthDate = value;
	}
	
	public java.lang.Integer getSex() {
		return this.sex;
	}
	
	public void setSex(java.lang.Integer value) {
		this.sex = value;
	}
	
	public java.lang.String getPhoneno() {
		return this.phoneno;
	}
	
	public void setPhoneno(java.lang.String value) {
		this.phoneno = value;
	}
	
	public java.lang.String getEmail() {
		return this.email;
	}
	
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	public java.lang.String getAddress() {
		return this.address;
	}
	
	public void setAddress(java.lang.String value) {
		this.address = value;
	}
	
	public java.lang.String getPostcode() {
		return this.postcode;
	}
	
	public void setPostcode(java.lang.String value) {
		this.postcode = value;
	}
	
	public java.lang.String getProfile() {
		return this.profile;
	}
	
	public void setProfile(java.lang.String value) {
		this.profile = value;
	}
	
	public java.lang.String getBankname() {
		return this.bankname;
	}
	
	public void setBankname(java.lang.String value) {
		this.bankname = value;
	}
	
	public java.lang.String getBankopenname() {
		return this.bankopenname;
	}
	
	public void setBankopenname(java.lang.String value) {
		this.bankopenname = value;
	}
	
	public java.lang.String getBanknumber() {
		return this.banknumber;
	}
	
	public void setBanknumber(java.lang.String value) {
		this.banknumber = value;
	}
	
	public java.lang.Long getTemplateId() {
		return this.templateId;
	}
	
	public void setTemplateId(java.lang.Long value) {
		this.templateId = value;
	}
	
	public java.lang.String getTemplate() {
		return this.template;
	}
	
	public void setTemplate(java.lang.String value) {
		this.template = value;
	}
	
	public java.lang.String getCompanyName() {
		return this.companyName;
	}
	
	public void setCompanyName(java.lang.String value) {
		this.companyName = value;
	}
	
	public java.lang.String getPassportPicture() {
		return this.passportPicture;
	}
	
	public void setPassportPicture(java.lang.String value) {
		this.passportPicture = value;
	}
	
	public java.lang.String getOrgNumber() {
		return this.orgNumber;
	}
	
	public void setOrgNumber(java.lang.String value) {
		this.orgNumber = value;
	}
	
	public java.lang.String getCreateDate() {
		return this.createDate;
	}
	
	public void setCreateDate(java.lang.String value) {
		this.createDate = value;
	}
	
	public java.lang.Float getPointDescriptionMatch() {
		return this.pointDescriptionMatch;
	}
	
	public void setPointDescriptionMatch(java.lang.Float value) {
		this.pointDescriptionMatch = value;
	}
	
	public java.lang.Float getPointPerfational() {
		return this.pointPerfational;
	}
	
	public void setPointPerfational(java.lang.Float value) {
		this.pointPerfational = value;
	}
	
	public java.lang.Float getPointServiceAttitude() {
		return this.pointServiceAttitude;
	}
	
	public void setPointServiceAttitude(java.lang.Float value) {
		this.pointServiceAttitude = value;
	}
	
	public java.lang.Float getPointAppointmentSuccessful() {
		return this.pointAppointmentSuccessful;
	}
	
	public void setPointAppointmentSuccessful(java.lang.Float value) {
		this.pointAppointmentSuccessful = value;
	}
	
	public java.lang.Float getFlowerPercent() {
		return this.flowerPercent;
	}
	
	public void setFlowerPercent(java.lang.Float value) {
		this.flowerPercent = value;
	}
	
	public java.lang.Integer getServedClients() {
		return this.servedClients;
	}
	
	public void setServedClients(java.lang.Integer value) {
		this.servedClients = value;
	}
	
	public java.lang.Integer getSavedCount() {
		return this.savedCount;
	}
	
	public void setSavedCount(java.lang.Integer value) {
		this.savedCount = value;
	}
	
	public java.lang.String getIntroduction() {
		return this.introduction;
	}
	
	public void setIntroduction(java.lang.String value) {
		this.introduction = value;
	}
	
	public java.lang.String getSuggestreason() {
		return this.suggestreason;
	}
	
	public void setSuggestreason(java.lang.String value) {
		this.suggestreason = value;
	}
	
	public java.lang.String getMoreservice() {
		return this.moreservice;
	}
	
	public void setMoreservice(java.lang.String value) {
		this.moreservice = value;
	}
	
	public java.lang.Float getMapx() {
		return this.mapx;
	}
	
	public void setMapx(java.lang.Float value) {
		this.mapx = value;
	}
	
	public java.lang.Float getMapy() {
		return this.mapy;
	}
	
	public void setMapy(java.lang.Float value) {
		this.mapy = value;
	}
	
	public java.lang.String getMapimg() {
		return this.mapimg;
	}
	
	public void setMapimg(java.lang.String value) {
		this.mapimg = value;
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

