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


public class KlSellerProductQuery extends BaseQuery implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** id */
	private java.lang.Long id;
	/** shopId */
	private java.lang.Long shopId;
	private java.lang.Long distinctshopId;
	
	private java.lang.Long shopIdNe;
	
	/** name */
	private java.lang.String name;
	/** price */
	private java.lang.Float price;
	private java.lang.Float pricefrom;
	private java.lang.Float priceto;
	/** classCount */
	private java.lang.Integer classCount;
	/** perClassMinutes */
	private java.lang.Integer perClassMinutes;
	/** categoryid */
	private java.lang.Long categoryid;
	/** validDays */
	private java.lang.Integer validDays;
	/** teachType */
	private java.lang.Integer teachType;
	/** returnClassCount */
	private java.lang.Integer returnClassCount;
	/** photo */
	private java.lang.String photo;
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
	/** quanid */
	private java.lang.Long quanid;
	/** quan */
	private java.lang.String quan;
	/** gotoHome */
	private java.lang.Integer gotoHome;
	/** placePriceInclued */
	private java.lang.Integer placePriceInclued;
	/** placeAddition */
	private java.lang.String placeAddition;
	/** allConsulting */
	private java.lang.Integer allConsulting;
	/** freeConsulting */
	private java.lang.Integer freeConsulting;
	/** description */
	private java.lang.String description;
	/** tags */
	private java.lang.String tags;
	private java.lang.String tags1;
	private java.lang.String tags2;
	private java.lang.String tags3;
	private java.lang.String tags4;
	private java.lang.String tags5;
	/** savedCount */
	private java.lang.Integer savedCount;
	/** buyedCount */
	private java.lang.Integer buyedCount;
	/** flowerCount */
	private java.lang.Integer flowerCount;
	/** eggCount */
	private java.lang.Integer eggCount;
	/** middleCount */
	private java.lang.Integer middleCount;
	/** templateId */
	private java.lang.Long templateId;
	/** template */
	private java.lang.String template;
	/** status */
	private java.lang.Integer status;
	private java.lang.Integer statusFrom;
	
	private java.lang.Float mapxfrom;
	private java.lang.Float mapxto;
	private java.lang.Float mapyfrom;
	private java.lang.Float mapyto;
	
	private java.lang.Float mapx;
	private java.lang.Float mapy;
	
	private java.lang.Integer shoptype;
	private java.lang.Float starfrom;
	
	
	private java.lang.String ext6;
	private java.lang.String ext7;
	private java.lang.String ext8;
	private java.lang.String ext9;
	private java.lang.String ext10;
	private java.lang.String subname;
	private java.lang.String ids;
	
	public java.lang.String getTags1() {
		return tags1;
	}

	public void setTags1(java.lang.String tags1) {
		this.tags1 = tags1;
	}

	public java.lang.String getTags2() {
		return tags2;
	}

	public void setTags2(java.lang.String tags2) {
		this.tags2 = tags2;
	}

	public java.lang.String getTags3() {
		return tags3;
	}

	public void setTags3(java.lang.String tags3) {
		this.tags3 = tags3;
	}

	public java.lang.String getTags4() {
		return tags4;
	}

	public void setTags4(java.lang.String tags4) {
		this.tags4 = tags4;
	}

	public java.lang.String getTags5() {
		return tags5;
	}

	public void setTags5(java.lang.String tags5) {
		this.tags5 = tags5;
	}

	public java.lang.Long getShopIdNe() {
		return shopIdNe;
	}

	public void setShopIdNe(java.lang.Long shopIdNe) {
		this.shopIdNe = shopIdNe;
	}

	public java.lang.String getIds() {
		return ids;
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

	public void setIds(java.lang.String ids) {
		this.ids = ids;
	}

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
	
	public java.lang.Integer getShoptype() {
		return shoptype;
	}

	public void setShoptype(java.lang.Integer shoptype) {
		this.shoptype = shoptype;
	}

	public java.lang.Float getStarfrom() {
		return starfrom;
	}

	public void setStarfrom(java.lang.Float starfrom) {
		this.starfrom = starfrom;
	}

	public java.lang.Float getMapxfrom() {
		return mapxfrom;
	}

	public void setMapxfrom(java.lang.Float mapxfrom) {
		this.mapxfrom = mapxfrom;
	}

	public java.lang.Float getMapxto() {
		return mapxto;
	}

	public void setMapxto(java.lang.Float mapxto) {
		this.mapxto = mapxto;
	}

	public java.lang.Float getMapyfrom() {
		return mapyfrom;
	}

	public void setMapyfrom(java.lang.Float mapyfrom) {
		this.mapyfrom = mapyfrom;
	}

	public java.lang.Float getMapyto() {
		return mapyto;
	}

	public void setMapyto(java.lang.Float mapyto) {
		this.mapyto = mapyto;
	}

	public java.lang.Integer getStatusFrom() {
		return statusFrom;
	}

	public void setStatusFrom(java.lang.Integer statusFrom) {
		this.statusFrom = statusFrom;
	}


	/** addition */
	private java.lang.String addition;
	/** createtimelong */
	private java.lang.Long createtimelong;
	private java.lang.Long createtimelongstart;
	private java.lang.Long createtimelongend;
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


	public java.lang.Float getPricefrom() {
		return pricefrom;
	}

	public void setPricefrom(java.lang.Float pricefrom) {
		this.pricefrom = pricefrom;
	}

	public java.lang.Float getPriceto() {
		return priceto;
	}

	public void setPriceto(java.lang.Float priceto) {
		this.priceto = priceto;
	}


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
	/** extInt5 */
	private java.lang.Integer extInt5;

	public java.lang.Long getId() {
		return this.id;
	}
	
	public void setId(java.lang.Long value) {
		this.id = value;
	}
	
	public java.lang.Long getShopId() {
		return this.shopId;
	}
	
	public void setShopId(java.lang.Long value) {
		this.shopId = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.Float getPrice() {
		return this.price;
	}
	
	public void setPrice(java.lang.Float value) {
		this.price = value;
	}
	
	public java.lang.Integer getClassCount() {
		return this.classCount;
	}
	
	public void setClassCount(java.lang.Integer value) {
		this.classCount = value;
	}
	
	public java.lang.Integer getPerClassMinutes() {
		return this.perClassMinutes;
	}
	
	public void setPerClassMinutes(java.lang.Integer value) {
		this.perClassMinutes = value;
	}
	
	public java.lang.Long getCategoryid() {
		return this.categoryid;
	}
	
	public void setCategoryid(java.lang.Long value) {
		this.categoryid = value;
	}
	
	public java.lang.Integer getValidDays() {
		return this.validDays;
	}
	
	public java.lang.Long getDistinctshopId() {
		return distinctshopId;
	}

	public void setDistinctshopId(java.lang.Long distinctshopId) {
		this.distinctshopId = distinctshopId;
	}

	public void setValidDays(java.lang.Integer value) {
		this.validDays = value;
	}
	
	public java.lang.Integer getTeachType() {
		return this.teachType;
	}
	
	public void setTeachType(java.lang.Integer value) {
		this.teachType = value;
	}
	
	public java.lang.Integer getReturnClassCount() {
		return this.returnClassCount;
	}
	
	public void setReturnClassCount(java.lang.Integer value) {
		this.returnClassCount = value;
	}
	
	public java.lang.String getPhoto() {
		return this.photo;
	}
	
	public void setPhoto(java.lang.String value) {
		this.photo = value;
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
	
	public java.lang.Long getQuanid() {
		return this.quanid;
	}
	
	public void setQuanid(java.lang.Long value) {
		this.quanid = value;
	}
	
	public java.lang.String getQuan() {
		return this.quan;
	}
	
	public void setQuan(java.lang.String value) {
		this.quan = value;
	}
	
	public java.lang.Integer getGotoHome() {
		return this.gotoHome;
	}
	
	public void setGotoHome(java.lang.Integer value) {
		this.gotoHome = value;
	}
	
	public java.lang.Integer getPlacePriceInclued() {
		return this.placePriceInclued;
	}
	
	public void setPlacePriceInclued(java.lang.Integer value) {
		this.placePriceInclued = value;
	}
	
	public java.lang.String getPlaceAddition() {
		return this.placeAddition;
	}
	
	public void setPlaceAddition(java.lang.String value) {
		this.placeAddition = value;
	}
	
	public java.lang.Integer getAllConsulting() {
		return this.allConsulting;
	}
	
	public void setAllConsulting(java.lang.Integer value) {
		this.allConsulting = value;
	}
	
	public java.lang.Integer getFreeConsulting() {
		return this.freeConsulting;
	}
	
	public void setFreeConsulting(java.lang.Integer value) {
		this.freeConsulting = value;
	}
	
	public java.lang.String getDescription() {
		return this.description;
	}
	
	public void setDescription(java.lang.String value) {
		this.description = value;
	}
	
	public java.lang.String getTags() {
		return this.tags;
	}
	
	public void setTags(java.lang.String value) {
		this.tags = value;
	}
	
	public java.lang.Integer getSavedCount() {
		return this.savedCount;
	}
	
	public void setSavedCount(java.lang.Integer value) {
		this.savedCount = value;
	}
	
	public java.lang.Integer getBuyedCount() {
		return this.buyedCount;
	}
	
	public void setBuyedCount(java.lang.Integer value) {
		this.buyedCount = value;
	}
	
	public java.lang.Integer getFlowerCount() {
		return this.flowerCount;
	}
	
	public void setFlowerCount(java.lang.Integer value) {
		this.flowerCount = value;
	}
	
	public java.lang.Integer getEggCount() {
		return this.eggCount;
	}
	
	public void setEggCount(java.lang.Integer value) {
		this.eggCount = value;
	}
	
	public java.lang.Integer getMiddleCount() {
		return this.middleCount;
	}
	
	public void setMiddleCount(java.lang.Integer value) {
		this.middleCount = value;
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
	

	public String toString() {
		return ToStringBuilder.reflectionToString(this,ToStringStyle.MULTI_LINE_STYLE);
	}
	
}

