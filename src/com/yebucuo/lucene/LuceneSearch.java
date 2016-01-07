package com.yebucuo.lucene;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.analysis.cn.smart.*;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import com.kailian.glo.model.CmsInputTable;
import com.yebucuo.sigleton.InputSingleton;

import cn.org.rapid_framework.page.Page;

/**
 * @author chongxin
 * @since 2013/6/19
 * @version Lucene 4.3.1
 * */

public class LuceneSearch {

	/*
	 * 最后没有写完
	 */
	public static Page search(String className, Query q) throws IOException {
		//索引文件的保存位置
		Directory dir = FSDirectory.open(new File(Constants.INDEX_STORE_PATH + "/" + className));
		IndexReader reader=DirectoryReader.open(dir);  
        IndexSearcher searcher=new IndexSearcher(reader);  
        
        BooleanQuery bq = new BooleanQuery();
        java.lang.reflect.Field[] fields=q.getClass().getDeclaredFields();
        for (java.lang.reflect.Field field : fields) {
			String tn = field.getType().getName();
			if (tn.indexOf("String") < 0 && tn.indexOf("Integer") < 0 && tn.indexOf("Long") < 0) {
				continue;
			}
			
			CmsInputTable cit = (CmsInputTable) InputSingleton.getInputMap().get(className + "-" + field.getName());
			if (cit == null)
				continue;
			
			Object vl = LuceneIndex.getFieldValueByName(field.getName()	, q);
			Query q1  = new TermQuery(new Term(field.getName(), vl + ""));
			bq.add(q1, BooleanClause.Occur.MUST);
        }
        
        //searcher.se
        return null;
	}
	
	
	/*
	// 声明一个IndexSearcher对象
	private IndexSearcher searcher = null;
	// 声明一个Query对象
	private Query query = null;
	private String field = "contents";

	public LuceneSearch() {
		try {
			IndexReader reader = DirectoryReader.open(FSDirectory.open(new File(Constants.INDEX_STORE_PATH)));
			searcher = new IndexSearcher(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    //返回查询结果 
	public final TopDocs search(String keyword) {
		System.out.println("正在检索关键字 : " + keyword);
		try {
			//Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_47);
			SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer(Version.LUCENE_47, true);
			QueryParser parser = new QueryParser(Version.LUCENE_47, field,analyzer);
			// 将关键字包装成Query对象
			query = parser.parse(keyword);
			Date start = new Date();
			TopDocs results = searcher.search(query, 5 * 2);
			Date end = new Date();
			System.out.println("检索完成，用时" + (end.getTime() - start.getTime())
					+ "毫秒");
			return results;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
      //打印结果
	public void printResult(TopDocs results) {
		ScoreDoc[] h = results.scoreDocs;
		if (h.length == 0) {
			System.out.println("对不起，没有找到您要的结果。");
		} else {
			for (int i = 0; i < h.length; i++) {
				try {
					Document doc = searcher.doc(h[i].doc);
					System.out.print("这是第" + i + "个检索到的结果，文件名为：");
					System.out.println(doc.get("path"));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		System.out.println("--------------------------");
	}

	public static void main(String[] args) throws Exception {
		LuceneSearch test = new LuceneSearch();
		TopDocs h = null;
		h = test.search("优用");
		test.printResult(h);
		h = test.search("中");
		test.printResult(h);
		h = test.search("词典存储");
		test.printResult(h);
	}
	*/
}


