package com.yebucuo.servlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.util.Random;
import java.awt.*;
import java.awt.image.*;

import javax.imageio.*;

import com.yebucuo.util.Utils;

public class ValidNumServlet extends HttpServlet {
	private static final long serialVersionUID = -1242342L;

	private static int IMAGE_WIDTH = 60;
	private static int IMAGE_HEIGHET = 20;
	private static int LENGTH = 4;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("image/jpeg"); // 响应为一个图片JPEG格式的图片
		ServletOutputStream sos = response.getOutputStream();

		// 设置浏览器不要缓存验证码图片
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Expires", String.valueOf(0));

		// 创建一个内存图片，并获得其图形上下文
		BufferedImage image = new BufferedImage(IMAGE_WIDTH, IMAGE_HEIGHET,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();

		// 产生随机的认证码
		char[] randChars = generateRandomCodes();

		// 将当前验证码存入到Session或者数据库中,下一个表单处理中验证客户端提交的验证码是否正确
		Utils.getSessionByRequest(request).setAttribute("validnum", new String(randChars));

		drawBackground(g);

		drawRands(g, randChars);

		// 结束图像的绘制过程
		g.dispose();

		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		ImageIO.write(image, "JPEG", bos);
		byte[] buf = bos.toByteArray();
		response.setContentLength(buf.length);
		sos.write(buf);

		bos.close();
		sos.close();
	}

	/**
	 * @param g
	 * @param randChars
	 */
	private void drawRands(Graphics g, char[] randChars) {
		g.setColor(Color.BLACK);
		g.setFont(new Font(null, Font.ITALIC | Font.BOLD, 18));

		// 不同的高度输出验证码的每个字符
		g.drawString("" + randChars[0], 1, 17);
		g.drawString("" + randChars[1], 16, 15);
		g.drawString("" + randChars[2], 31, 18);
		g.drawString("" + randChars[3], 46, 16);
//		g.drawString("" + randChars[4], 61, 14);
//		g.drawString("" + randChars[5], 76, 19);
	}

	/**
	 * @param g
	 */
	private void drawBackground(Graphics g) {
		// 画背景
		g.setColor(new Color(0xDCDCDC));
		g.fillRect(0, 0, IMAGE_WIDTH, IMAGE_HEIGHET);

		// 随机产生120个干扰点
		for (int i = 0; i < 120; i++) {
			int x = (int) (Math.random() * IMAGE_WIDTH);
			int y = (int) (Math.random() * IMAGE_HEIGHET);
			int red = (int) (Math.random() * 255);
			int green = (int) (Math.random() * 255);
			int blue = (int) (Math.random() * 255);
			g.setColor(new Color(red, green, blue));
			g.drawOval(x, y, 1, 0);
		}
		// 加两条干扰线
		g.drawLine(0, 5, 90, 5);
		g.drawLine(0, 15, 90, 15);
	}

	/**
	 * @return
	 */
	private char[] generateRandomCodes() {
		String chars = "0123456789";

		char[] rands = new char[LENGTH];
		Random randGenerator = new Random();
		for (int i = 0; i < rands.length; i++) {
			int randIndex = randGenerator.nextInt(10);
			rands[i] = chars.charAt(randIndex);
		}
		return rands;
	}
}