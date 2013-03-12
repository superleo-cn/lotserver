package com.ruyicai.lotserver.lottype.gpc.ssc;

import com.ruyicai.lotserver.lottype.OrderInfoHtmlParseCommon;

/**
 * 时时彩-五星通选
 * @author Administrator
 *
 */
public class Ssc_5T {

	/**
	 * 解析OrderInfo
	 * @param code(5T|8,1,8,1,7_1_200_200)
	 * @return
	 */
	public static String parseOrderInfo(String code) {
		String parseCode = code;
		return parseCode;
	}
	
	/**
	 * 解析OrderInfo(html)
	 * @param code(5T|8,1,8,1,7_1_200_200)
	 * @param winCode(68588)
	 * @return
	 */
	public static String parseOrderInfoHtml(String code, String winCode) {
		String[] codes = code.split(",");
		
		StringBuilder builder = new StringBuilder();
		for (int i = 0; i < codes.length; i++) {
			String parseCode = OrderInfoHtmlParseCommon.getPositionalBetCodeFs(codes[i], winCode.substring(i, i+1));
			builder.append(parseCode).append(",");
		}
		if (builder.toString().endsWith(",")) {
			builder = builder.delete(builder.length()-1, builder.length());
		}
		
		return builder.toString();
	}
	
	/*public static void main(String[] args) {
		String html = parseOrderInfoHtml("-,-,0,1,2", "68582");
		System.out.println(html);
	}*/
	
}