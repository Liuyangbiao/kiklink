package com.yebucuo.util;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

import com.kailian.glo.model.CmsCommonPhoto;
import com.kailian.glo.model.CmsUserInfo;
import com.kailian.glo.model.KlSellerCoach;
import com.kailian.glo.model.KlSellerProduct;
import com.kailian.glo.model.KlSellerShop;
import com.kailian.glo.service.ICmsCommonPhotoManager;
import com.kailian.glo.service.ICmsUserInfoManager;
import com.kailian.glo.service.IKlSellerCoachManager;
import com.kailian.glo.service.IKlSellerProductManager;
import com.kailian.glo.service.IKlSellerShopManager;
import com.yebucuo.spring.SpringContext;


public class ImportUtils {
	
	public static void gogo(String path) {
		List list = ImportUtils.readLines(path + "/店铺.csv") ;
		
		String[] s1 = ((String) list.get(0)).split(";");
		for (int i = 0; i < s1.length; i ++	)
			System.out.println(s1[i]);
	}
	///Users/dapeng/Downloads/超级穿越
	
	public static void main(String[] args){
		try {
			ImportUtils.dodo();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static void dodo() throws Exception {

		String pre = "/Users/dapeng/Downloads/超级穿越/";
		String att = "/Users/dapeng/work/java/cms/web/attached/";
		
		Logger log = Logger.getLogger(ImportUtils.class);
		
		ICmsCommonPhotoManager cmsCommonPhotoManager  = (ICmsCommonPhotoManager) SpringContext.getBean("cmsCommonPhotoManager");
		ICmsUserInfoManager cmsUserInfoManager  = (ICmsUserInfoManager) SpringContext.getBean("cmsUserInfoManager");
		IKlSellerShopManager klSellerShopManager  = (IKlSellerShopManager) SpringContext.getBean("klSellerShopManager");
		IKlSellerProductManager klSellerProductManager  = (IKlSellerProductManager) SpringContext.getBean("klSellerProductManager");
		IKlSellerCoachManager klSellerCoachManager  = (IKlSellerCoachManager) SpringContext.getBean("klSellerCoachManager");
		
	       File file = new File(pre + "店铺.xls");

	       String[][] re = getData(file, 0);
	       String[] s = re[1];
	       //0名字	1类型	2生日	3性别	4电话	5邮箱	6地址	7邮编	8省份	9市	10区11	商圈	12开户信息	13营业执照号码	
	       //14组织机构号码	15基本介绍	16推荐理由	17服务设施	18地图坐标
	       CmsUserInfo user = new CmsUserInfo();
	       user.setThirdType("mobile");
	       user.setRealName(s[0]);
	       user.setMobile(s[4]);
	       user.setPasswd(s[4]);
	       user.setCreatetimelong(System.currentTimeMillis());
	       cmsUserInfoManager.save(user);
	       
	       
	       //开店
	       KlSellerShop shop = new KlSellerShop();
	       shop.setShopName(s[0]);
	       shop.setShoptype(1);
	       if (StringUtils.isNotEmpty(s[2])) {
	    	   String[] ds = s[2].split("/");
	    	   if (ds.length >= 3) {
	    		   shop.setBirthYear(Integer.parseInt(ds[0]));
	    		   shop.setBirthMonth(Integer.parseInt(ds[1]));
	    		   shop.setBirthDate(Integer.parseInt(ds[2]));
	    	   }
	       }
	       shop.setSex("男".equalsIgnoreCase(s[3]) ?1:2);
	       shop.setPhoneno(s[4]);
	       shop.setEmail(s[5]);
	       shop.setAddress(s[6]);
	       shop.setPostcode(s[7]);
	       shop.setProvince(s[8]);
	       shop.setCity(s[9]);
	       shop.setQu(s[10]);
	       shop.setUserid(user.getId());
	       
	       if (StringUtils.isNotEmpty(s[12])) {
	    	   String[] ds = s[12].split("/");
	    	   if (ds.length >= 3) {
	    		   shop.setBankname(ds[0]);
	    		   shop.setBankopenname(ds[1]);
	    		   shop.setBanknumber(ds[2]);
	    	   }
	       }
	       shop.setIdNumber(s[13]);
	       shop.setOrgNumber(s[14]);
	       shop.setIntroduction(s[15]);
	       shop.setSuggestreason(s[16]);
	       shop.setAddition(s[17]);
	       if (StringUtils.isNotEmpty(s[18])) {
	    	   String[] ds = s[18].split(",");
	    	   if (ds.length >= 2) {
	    		   shop.setMapx(Float.parseFloat(ds[0].trim()));
	    		   shop.setMapy(Float.parseFloat(ds[1].trim()));
	    	   }
	       }
	       
	       klSellerShopManager.save(shop);
	       
	      
	       String cc = "";
	       //教练
	       File dir = new File(pre);
    	   File[] fs = dir.listFiles();
	       for (int i = 0; i < fs.length; i ++) {
	    	   if (fs[i].getName().startsWith("教练") && fs[i].getName().endsWith("jpg")) {
	    		   String name = fs[i].getName();
	    		   name = name.replaceAll("教练", "").replaceAll(".jpg", "");
	    		   KlSellerCoach c = new KlSellerCoach();
	    		   c.setName(name);
	    		   long tm1 = System.currentTimeMillis();
		    	   ImportUtils.copyFile(pre + fs[i].getName(), att + "upd/" + tm1 + "_c.jpg");
		    	   c.setPhoto("/attached/upd/" + tm1 + "_c.jpg");
	    		   c.setAddition(name);
	    		   c.setShopId(shop.getId());
	    		   klSellerCoachManager.save(c);
	    		   
	    		   if (cc.equalsIgnoreCase("") == false)
	    			   cc = cc + ",";
	    		   cc = cc + c.getId();
	    	   }
	       }
	       
	       
	       //产品
	       //0产品名称	1价格	2每节课分钟	3分类	4有效期	5省份	6市	7区	8商圈	9包含场地费	10全程咨询	11免费咨询	12基本信息	
	       //13标签	14详细信息	15地图坐标
	       file = new File(pre + "产品.xls");
	       re = getData(file, 0);
	       for (int i = 1; i < re.length; i ++) {
	    	   KlSellerProduct p = new KlSellerProduct();
	    	   s = re[i];
	    	   p.setShopId(shop.getId());
	    	   p.setName(s[0]);
	    	   log.info("-----------xxxx  :" + s[1]);
	    	  p.setPrice(Float.parseFloat(s[1].trim()));
	    	  //p.setPrice(new Float(800));
	    	   p.setPerClassMinutes(Integer.parseInt(s[2].trim()));
	    	   p.setCategoryid(Long.parseLong(s[3].trim()));
	    	   p.setValidDays(Integer.parseInt(s[4].trim()));
	    	   p.setProvince(s[5]);
	    	   p.setCity(s[6]);
	    	   p.setQu(s[7]);
	    	   p.setQuan(s[8]);
	    	   p.setPlacePriceInclued("是".equalsIgnoreCase(s[9].trim())?1:0);
	    	   p.setAllConsulting("是".equalsIgnoreCase(s[10].trim())?1:0);
	    	   p.setFreeConsulting("是".equalsIgnoreCase(s[11].trim())?1:0);
	    	   p.setDescription(s[12]);
	    	   p.setTags(s[13]);
	    	   p.setAddition(s[14]);
	    	   p.setSavedCount(0);
	    	   p.setBuyedCount(0);
	    	   p.setExt5(shop.getShopName());
	    	   p.setExtInt2(0);
	    	   
	    	   if (StringUtils.isNotEmpty(s[15])) {
		    	   String[] ds = s[15].split(",");
		    	   if (ds.length >= 2) {
		    		   p.setMapx(Float.parseFloat(ds[0].trim()));
		    		   p.setMapy(Float.parseFloat(ds[1].trim()));
		    	   }
		       }
	    	   String[] pp = p.getName().split("--");
	    	   long tm = System.currentTimeMillis();
	    	   ImportUtils.copyFile(pre + pp[0] + ".jpg", att + "upd/" + tm + ".jpg");
	    	   p.setPhoto("/attached/upd/" + tm + ".jpg");
	    	   if (i == 1) {
	    		   shop.setLogo(p.getPhoto());
	    		   klSellerShopManager.update(shop);
	    	   }
	    	   CmsCommonPhoto cp = new CmsCommonPhoto();
			   cp.setOwnnerid(shop.getId());
			   cp.setOwnnertype(Utils.TYPE_PHOTO_FOCUSOFSHOP);
			   cp.setResource(p.getPhoto());
			   cmsCommonPhotoManager.save(cp);
			   
			   p.setExt4(cc);
			   p.setCreatetimelong(System.currentTimeMillis());
			   p.setStatus(1);
	    	   
	    	   klSellerProductManager.save(p);
	    	   
	    	   
	    	   
	    	   //照片
	    	   
	    	    dir = new File(pre);
	    	   fs = dir.listFiles();
	    	   for (int j = 0; j < fs.length; j ++) {
	    		   if (fs[j].getName().startsWith(pp[0])) {
	    			   ImportUtils.copyFile(pre + "" + fs[j].getName(), att + "upd/" + tm + "_" + j + ".jpg");
	    			   cp = new CmsCommonPhoto();
	    			   cp.setOwnnerid(p.getId());
	    			   cp.setResource("/attached/upd/" + tm + "_" + j + ".jpg");
	    			   cp.setOwnnertype(Utils.TYPE_PHOTOOWNER_PRODUCT);
	    			   cmsCommonPhotoManager.save(cp);
	    		   }
	    	   }
	       }
	    }
	
	
	
	public static List readLines(String filepath) {
		System.out.println(filepath);
		List<String> list = new ArrayList<String>();
		File file = new File(filepath);
		if (file.isFile() && file.exists()) { // 判断文件是否存在
			InputStreamReader read;
			try {
				read = new InputStreamReader(new FileInputStream(
						file));
				
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					list.add(lineTxt);
					
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}// 考虑到编码格式
 catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		return list;
	}
	
	
	
	   /**

     * 读取Excel的内容，第一维数组存储的是一行中格列的值，二维数组存储的是多少个行

     * @param file 读取数据的源Excel

     * @param ignoreRows 读取数据忽略的行数，比喻行头不需要读入 忽略的行数为1

     * @return 读出的Excel中数据的内容

     * @throws FileNotFoundException

     * @throws IOException

     */

    public static String[][] getData(File file, int ignoreRows)

           throws FileNotFoundException, IOException {

       List<String[]> result = new ArrayList<String[]>();

       int rowSize = 0;

       BufferedInputStream in = new BufferedInputStream(new FileInputStream(

              file));

       // 打开HSSFWorkbook

       POIFSFileSystem fs = new POIFSFileSystem(in);

       HSSFWorkbook wb = new HSSFWorkbook(fs);

       HSSFCell cell = null;

       for (int sheetIndex = 0; sheetIndex < wb.getNumberOfSheets(); sheetIndex++) {

           HSSFSheet st = wb.getSheetAt(sheetIndex);

           // 第一行为标题，不取

           for (int rowIndex = ignoreRows; rowIndex <= st.getLastRowNum(); rowIndex++) {

              HSSFRow row = st.getRow(rowIndex);

              if (row == null) {

                  continue;

              }

              int tempRowSize = row.getLastCellNum() + 1;

              if (tempRowSize > rowSize) {

                  rowSize = tempRowSize;

              }

              String[] values = new String[rowSize];

              Arrays.fill(values, "");

              boolean hasValue = false;

              for (short columnIndex = 0; columnIndex <= row.getLastCellNum(); columnIndex++) {

                  String value = "";

                  cell = row.getCell(columnIndex);

                  if (cell != null) {

                     // 注意：一定要设成这个，否则可能会出现乱码

                     //cell.setEncoding(HSSFCell.ENCODING_UTF_16);
                     

                     switch (cell.getCellType()) {

                     case HSSFCell.CELL_TYPE_STRING:

                         value = cell.getStringCellValue();

                         break;

                     case HSSFCell.CELL_TYPE_NUMERIC:

                         if (HSSFDateUtil.isCellDateFormatted(cell)) {

                            Date date = cell.getDateCellValue();

                            if (date != null) {

                                value = new SimpleDateFormat("yyyy-MM-dd")

                                       .format(date);

                            } else {

                                value = "";

                            }

                         } else {

                            value = new DecimalFormat("0").format(cell

                                   .getNumericCellValue());

                         }

                         break;

                     case HSSFCell.CELL_TYPE_FORMULA:

                         // 导入时如果为公式生成的数据则无值

                         if (!cell.getStringCellValue().equals("")) {

                            value = cell.getStringCellValue();

                         } else {

                            value = cell.getNumericCellValue() + "";

                         }

                         break;

                     case HSSFCell.CELL_TYPE_BLANK:

                         break;

                     case HSSFCell.CELL_TYPE_ERROR:

                         value = "";

                         break;

                     case HSSFCell.CELL_TYPE_BOOLEAN:

                         value = (cell.getBooleanCellValue() == true ? "Y"

                                : "N");

                         break;

                     default:

                         value = "";

                     }

                  }

                  if (columnIndex == 0 && value.trim().equals("")) {

                     break;

                  }

                  values[columnIndex] = rightTrim(value);

                  hasValue = true;

              }

 

              if (hasValue) {

                  result.add(values);

              }

           }

       }

       in.close();

       String[][] returnArray = new String[result.size()][rowSize];

       for (int i = 0; i < returnArray.length; i++) {

           returnArray[i] = (String[]) result.get(i);

       }

       return returnArray;

    }

   

    /**

     * 去掉字符串右边的空格

     * @param str 要处理的字符串

     * @return 处理后的字符串

     */

     public static String rightTrim(String str) {

       if (str == null) {

           return "";

       }

       int length = str.length();

       for (int i = length - 1; i >= 0; i--) {

           if (str.charAt(i) != 0x20) {

              break;

           }

           length--;

       }

       return str.substring(0, length);

    }

     
     /** 
      * 复制单个文件 
      * @param oldPath String 原文件路径 如：c:/fqf.txt 
      * @param newPath String 复制后路径 如：f:/fqf.txt 
      * @return boolean 
      */ 
    public static void copyFile(String oldPath, String newPath) { 
        try { 
            int bytesum = 0; 
            int byteread = 0; 
            File oldfile = new File(oldPath); 
            if (oldfile.exists()) { //文件存在时 
                InputStream inStream = new FileInputStream(oldPath); //读入原文件 
                FileOutputStream fs = new FileOutputStream(newPath); 
                byte[] buffer = new byte[1444]; 
                int length; 
                while ( (byteread = inStream.read(buffer)) != -1) { 
                    bytesum += byteread; //字节数 文件大小 
                    System.out.println(bytesum); 
                    fs.write(buffer, 0, byteread); 
                } 
                inStream.close(); 
            } 
        } 
        catch (Exception e) { 
            System.out.println("复制单个文件操作出错"); 
            e.printStackTrace(); 

        } 

    } 
     
}
	



