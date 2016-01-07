package com.yebucuo.sigleton;

import java.util.HashMap;
import java.util.Map;

public class CountSingleton {
	private static Map countMap = null;
	
	
	public static Map getCountMap() {
		if (countMap == null) {
			countMap = new HashMap();
		}
		
		return countMap;
	}
	
	
	public static void setCount(long userid, String usertype, String messagetype, int count) {
		Map map = CountSingleton.getCountMap();
		map.put(usertype + "-" + messagetype + "-" + userid, count);
	}
	
	public static void addCount(long userid, String usertype,String messagetype, int count) {
		int c = CountSingleton.getCount(userid, usertype,messagetype);
		CountSingleton.setCount(userid, usertype, messagetype,count + c);
	}
	
	public static void clearCount(long userid, String usertype, String messagetype) {
		Map map = CountSingleton.getCountMap();
		map.remove(usertype + "-" + messagetype + "-" + userid);
	}
	
	public static int getCount(long userid, String usertype, String messagetype) {
		Map map = CountSingleton.getCountMap();
		Integer c = (Integer) map.get(usertype + "-" + messagetype +  "-" + userid);
		if (c == null)
			return 0;
		return c;
	}
}

