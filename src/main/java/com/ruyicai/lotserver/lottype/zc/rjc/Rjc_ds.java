package com.ruyicai.lotserver.lottype.zc.rjc;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.ruyicai.lotserver.lottype.OrderInfoHtmlParseCommon;
import com.ruyicai.lotserver.util.LotteryAlgorithmUtil;
import com.ruyicai.lotserver.util.common.Tools;
import com.ruyicai.lotserver.util.lot.ZuCaiUtil;

/**
 * 足球任九场-单式
 * @author Administrator
 *
 */
@Service
public class Rjc_ds {

	@Autowired
	private ZuCaiUtil zuCaiUtil;
	
	/**
	 * 解析OrderInfo
	 * @param code(1,1,3,3,3,3,3,3,3,#,#,#,#,#_2_200_200)
	 * @return
	 */
	public static String parseOrderInfo(String code) {
		String parseCode = code.replaceAll("#", "*");
		return parseCode;
	}
	
	/**
	 * 解析OrderInfo(html)
	 * @param code(1,1,3,3,3,3,3,3,3,#,#,#,#,#_2_200_200)
	 * @param winCode(10111311313113)
	 * @return
	 */
	public static String parseOrderInfoHtml(String code, String winCode) {
		String codeString = code.replaceAll(",", "");
		String parseCode = OrderInfoHtmlParseCommon.getPositionalBetCodeDs(codeString, winCode);
		return parseCode;
	}
	
	/**
	 * 解析OrderInfo(JSONArray)
	 * @param lotNo
	 * @param batchCode
	 * @param code(1,1,3,3,3,3,3,3,3,#,#,#,#,#_2_200_200)
	 * @param winCode(10111311313113)
	 * @return
	 */
	public JSONArray getParseCodeArray(String lotNo, String batchCode, String code, String winCode) {
		JSONArray resultArray = new JSONArray();
		String codeString = code.replaceAll(",", "");
		List<String> codeList = LotteryAlgorithmUtil.getStringArrayFromString(codeString, 1);
		for (int i = 0; i < codeList.size(); i++) {
			String c = codeList.get(i);
			String win = "";
			if (!Tools.isEmpty(winCode)&&!winCode.equals("null")) {
				win = winCode.substring(i, i+1);
			}
			String pCode = OrderInfoHtmlParseCommon.getPositionalBetCodeFs(c, win);
			//获取赛事信息
			JSONObject matchInfoObject = zuCaiUtil.getMatchInfo(lotNo, batchCode, (i+1)+"");
			String homeTeam = matchInfoObject.getString("homeTeam"); //主队
			String guestTeam = matchInfoObject.getString("guestTeam"); //客队
			
			JSONObject object = new JSONObject();
			object.put("teamId", (i+1)+"");
			object.put("homeTeam", homeTeam);
			object.put("guestTeam", guestTeam);
			object.put("betContent", pCode);
			resultArray.add(object);
		}
		return resultArray;
	}
	
}
