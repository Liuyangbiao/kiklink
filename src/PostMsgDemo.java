import java.net.ConnectException;
import com.esms.*;
public class PostMsgDemo {
    
	public static void main(String[] args){
		PostMsg msg = new PostMsg("admin@bjylkj", "x123456w");
		
		//设置网关服务器，该服务器用于发送信息，不同的情况下连接服务器有不同的发送速度，
		//所以强烈推荐代码里面有能够修改服务器的选项，比如做成配置文件的格式
//		String cmIP = "219.136.240.94";
//		int cmPort = 13013;
//		msg.getCmHost().setHost(cmIP, cmPort);
		
		//设置Web Service服务器，该服务器用于接收信息，不同的情况下连接服务器有不同的发送速度，
		//所以强烈推荐代码里面有能够修改服务器的选项，比如做成配置文件的格式
		//String wsIP = "219.136.240.94";
		//int wsPort = 8080;
		//msg.getWsHost().setHost(wsIP, wsPort);
		
//		//如果是通过代理服务器上网，可以用如下的方式告诉接口代理服务器的信息和用户名密码
//		msg.getProxy().setProxy(ProxyServer.PROXY_TYPE_HTTP, "192.168.0.171", 808,
//			"one", "one");

		//显示余额
//		int remainFee = msg.getRemainFee();
//		if (remainFee < 0){
//			System.out.println("获取余额失败，原因为：" + esmsErrorMessage(remainFee) + "代号为：" + remainFee);	
//			return;
//		}else{
//			System.out.println("余额为：" + remainFee + "分");				
//		}
		
		if (msg.post("13810278199", "短信测试", null) == 0){
			System.out.println("短信发送成功，发送后的余额是" + msg.getRemainFee());							
		}else{
			System.out.println("短信发送失败");							
		}
		
		//MessageData[] msgData = new MessageData[3];
		//msgData[0] = new MessageData("13798079314", "1");
		//msgData[1] = new MessageData("13798079314", "2");
		//msgData[2] = new MessageData("13798079314", "3");
		//System.out.println(msg.post(msgData, null));				
		//System.out.println("余额为：" + remainFee + "分");				
		
		try {
			ConfigInfo info = msg.getConfigInfo();
			if (info == null){
				System.out.println("获取帐号信息失败，用户名密码错误");				
			}else{
				System.out.println(info.toString());
			}		
			
//			System.out.println("回复信息为：");							
//			MOMsg[] msgList = msg.getMOMsg();
//			if (msgList == null)
//				System.out.println("获取回复信息失败：用户名密码出错");	
//			else{
//				if (msgList.length == 0)
//					System.out.println("当前无回复信息");	
//				else
//					for (int i = 0; i < msgList.length; i++) {
//						System.out.println(msgList[i]);			
//					}						
//			}
		} catch (ConnectException e) {
			System.out.println("操作失败，连接不上服务器");
			e.printStackTrace();		
		}
	}

	private static String esmsErrorMessage(int errorCode)
	{
		switch (errorCode)
		{
			case PostMsg.E_INVALID_USER_PASSWORD:
				return "用户名密码错误";

			case PostMsg.E_FAILED_CONNECTED_TO_SERVER:
				return "连接不上服务器";				

			case PostMsg.E_FAILED_TO_POST_MESSAGE:
				return "短信发送失败，或者余额不足，或者密码错误";				

			case PostMsg.E_INVALID_MESSAGE_DATA:
				return "无效的短信号码或者内容";				

			default:
				return "未知错误";				
		}
	}
	
}
