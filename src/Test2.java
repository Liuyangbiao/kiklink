import com.yebucuo.util.Utils;



public class Test2 {
	public static void main(String[] args) {
		String s = Utils.getHTML("http://www.yebucuo.com/t3.txt", "utf-8");
		String[] ss = s.split("\n");
		
		for (int i = 0; i < ss.length; i ++) {
			//System.out.println(ss[i]);
			if (ss[i] != null && ss[i].startsWith("GET ")) {
				String a = ss[i].replaceAll("GET ", "");
				if (a.indexOf("page") < 0)
				System.out.println("http://livedemo00.template-help.com/wt_44961/img/fancybox_img/" + a);
			}
		}
	}
}