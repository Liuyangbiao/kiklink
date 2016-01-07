package com.yebucuo.lucene;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Method;
import java.util.Date;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.LongField;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import com.kailian.glo.model.CmsInputTable;
import com.yebucuo.sigleton.InputSingleton;
/**
 * @author chongxin
 * @since 2013/6/19
 * @version Lucene 4.3.1
 * */
public class LuceneIndex {
	// 索引器
	private IndexWriter writer = null;
	
	
	public static void indexObject(Object o) throws IOException {
		String className = o.getClass().getName();
		java.lang.reflect.Field[] fields=o.getClass().getDeclaredFields();
		
		//索引文件的保存位置
		Directory dir = FSDirectory.open(new File(Constants.INDEX_STORE_PATH + "/" + className));
		//分析器
		//Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_47);
		SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer(Version.LUCENE_47, true);
		//配置类
		IndexWriterConfig iwc = new IndexWriterConfig(Version.LUCENE_47,analyzer);
		iwc.setOpenMode(OpenMode.CREATE);//创建模式 OpenMode.CREATE_OR_APPEND 添加模式
		
		IndexWriter wt = new IndexWriter(dir, iwc);
		
		Document doc=new Document();  
		for (java.lang.reflect.Field field : fields) {
			String tn = field.getType().getName();
			//目前只索引字符串和数字
			if (tn.indexOf("String") < 0 && tn.indexOf("Integer") < 0 && tn.indexOf("Long") < 0) {
				continue;
			}
			
			CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(className + "-" + field.getName());
			if (cit == null)
				continue;
			
			Object vl = LuceneIndex.getFieldValueByName(field.getName()	, o);
			if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_STRING_STORE) {
				doc.add(new StringField(field.getName(), vl + "", Store.YES));
			}
			else if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_STRING_NOTSTORE) {
				doc.add(new StringField(field.getName(), vl + "", Store.NO));
			}
			else if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_TEXT_STORE) {
				doc.add(new TextField(field.getName(), vl + "", Store.YES));
			}
			else if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_TEXT_NOTSTORE) {
				doc.add(new TextField(field.getName(), vl + "", Store.NO));
			}
			else if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_LONG_STORE) {
				doc.add(new LongField(field.getName(), Long.parseLong(vl + ""), Store.YES));
			}
			else if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_LONG_NOTSTORE) {
				doc.add(new LongField(field.getName(), Long.parseLong(vl + ""), Store.NO));
			}
			else if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_INT_STORE) {
				doc.add(new LongField(field.getName(), Integer.parseInt(vl + ""), Store.YES));
			}
			else if (cit.getLuceneIndexType() == Constants.LUCENE_INDEX_INT_NOTSTORE) {
				doc.add(new LongField(field.getName(), Integer.parseInt(vl + ""), Store.NO));
			}
		}
		
		wt.addDocument(doc);
		wt.close();
		
		/*
		 * String pathFile="D://lucene/index";  
        dir=FSDirectory.open(new File(pathFile));  
        IndexWriter writer=getWriter();  
        for(int i=0; i < ids.length; i++) {  
            Document doc=new Document();  
            doc.add(new StringField("id", ids[i], Store.YES));  
            doc.add(new TextField("content", content[i], Store.YES));  
            doc.add(new StringField("city", city[i], Store.YES));  
            writer.addDocument(doc);  
        }  
		 */
	}
	
	
	public static Object getFieldValueByName(String fieldName, Object o) {  
	       try {    
	           String firstLetter = fieldName.substring(0, 1).toUpperCase();    
	           String getter = "get" + firstLetter + fieldName.substring(1);    
	           Method method = o.getClass().getMethod(getter, new Class[] {});    
	           Object value = method.invoke(o, new Object[] {});    
	           return value;    
	       } catch (Exception e) {    
	           return null;    
	       }    
	   }   
	
	
	
	//////////////////////////////////
	// 以下是实例
	
	public LuceneIndex() {
		try {
			//索引文件的保存位置
			Directory dir = FSDirectory.open(new File(Constants.INDEX_STORE_PATH));
			//分析器
			//Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_47);
			SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer(Version.LUCENE_47, true);
			//配置类
			IndexWriterConfig iwc = new IndexWriterConfig(Version.LUCENE_47,analyzer);
			iwc.setOpenMode(OpenMode.CREATE);//创建模式 OpenMode.CREATE_OR_APPEND 添加模式
			
			writer = new IndexWriter(dir, iwc);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 将要建立索引的文件构造成一个Document对象，并添加一个域"content"
	private Document getDocument(File f) throws Exception {
		Document doc = new Document();

		FileInputStream is = new FileInputStream(f);
		Reader reader = new BufferedReader(new InputStreamReader(is));
		//字符串 StringField LongField TextField
		Field pathField = new StringField("path", f.getAbsolutePath(),Field.Store.YES);
		Field contenField = new TextField("contents", reader);
		//添加字段
		doc.add(contenField);
		doc.add(pathField);
		return doc;
	}

	public void writeToIndex() throws Exception {
		File folder = new File(Constants.INDEX_FILE_PATH);
		
		if (folder.isDirectory()) {
			String[] files = folder.list();
			for (int i = 0; i < files.length; i++) {
				File file = new File(folder, files[i]);
				Document doc = getDocument(file);
				System.out.println("正在建立索引 : " + file + "");
				writer.addDocument(doc);
			}
		}
	}

	public void close() throws Exception {
		writer.close();
	}

	public static void main(String[] args) throws Exception {
		// 声明一个对象
		LuceneIndex indexer = new LuceneIndex();
		// 建立索引
		Date start = new Date();
		indexer.writeToIndex();
		Date end = new Date();

		System.out.println("建立索引用时" + (end.getTime() - start.getTime()) + "毫秒");

		indexer.close();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}