package com.sj.test2;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sj.dao.CustomerQnaDao;
import com.sj.vo.CustomerQna;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CustomerQnaDao qnaDao;
	
	private ModelAndView mav;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		List<CustomerQna> list = qnaDao.selectCusomerQnaList();
		
		model.addAttribute("qnaList", list);
		
		return "home";
	}
	
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public ModelAndView index(){
		logger.info("index page");
		mav = new ModelAndView();
		
		List<String> list = new ArrayList<String>();
		
		list.add("사과");
		list.add("배");
		list.add("감");
		list.add("바나나");
		
		mav.setViewName("view");
		mav.addObject("result", list);
		
		return mav;
	}
	
	
}
