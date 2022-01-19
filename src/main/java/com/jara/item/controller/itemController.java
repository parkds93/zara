package com.jara.item.controller;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class itemController {
	
	@RequestMapping(value="jaraMain.do")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView("itemlist");
		return mv;
	}
	
	@RequestMapping(value="itemDetail.do")
	public ModelAndView itemdetail() {
		ModelAndView mv = new ModelAndView("itemdetail");
		/*ItemDetail id = itemService.getItem();*/
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="verifyIamport", method = RequestMethod.POST)
	public IamportResponse<Payment> verifyIamport(@RequestParam Map<String,Object> requestParam) throws IamportResponseException, IOException {
		IamportClient api = new IamportClient("0220893880742071", "e27009a82176f81a8ee10b954e94f4c4f050391de414d5e2470b8c89d31fcdcd60d56a792494f073");
		String imp_uid = (String)requestParam.get("imp_uid");
		
		return api.paymentByImpUid(imp_uid);
		
	}

}
