package bean.toolbean;//包名
public class MyTools {
	public static String change(String str){
		str=str.replace("<","&lt;");
		str=str.replace(">","&gt;");
		return str;			
	}
}
