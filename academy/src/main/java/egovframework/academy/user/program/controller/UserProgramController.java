package egovframework.academy.user.program.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import egovframework.academy.user.program.model.UserProgramVo;
import egovframework.academy.user.program.service.UserProgramService;

@Controller
public class UserProgramController {

	@Autowired
	UserProgramService userProgramService;
	
	@RequestMapping(value="/view/program/list.do" , method = RequestMethod.GET)
	public ModelAndView UserProgramListGet(@ModelAttribute("UserProgramVo")UserProgramVo UserProgramVo , HttpServletRequest request , HttpServletResponse response ) {
		
		System.out.println("PAGE : " + UserProgramVo.getPAGE());
		System.out.println("ITEM_COUNT : " + UserProgramVo.getITEM_COUNT());
		System.out.println("TAGS : " + UserProgramVo.getTags());
		
		if(UserProgramVo.getTags().equals("")) {
			
			UserProgramVo.setTags("All");
			
		}
		
		String PAGE = request.getParameter("PAGE") != null ? request
				.getParameter("PAGE") : "0";
		String ITEM_COUNT = request.getParameter("ITEM_COUNT") != null ? request
				.getParameter("ITEM_COUNT") : "10";
		
		UserProgramVo.setPAGE(Integer.parseInt(PAGE));
		UserProgramVo.setITEM_COUNT(Integer.parseInt(ITEM_COUNT));
		
		int pagelimit = UserProgramVo.getPAGE() * UserProgramVo.getITEM_COUNT();
		
		UserProgramVo.setLIMIT(Integer.parseInt(ITEM_COUNT));
		UserProgramVo.setOFFSET(pagelimit);
		
		ModelMap model = new ModelMap();
		
		model = userProgramService.getListData(UserProgramVo);
		
		model.put("beforeData", UserProgramVo);
		
		return new ModelAndView("view/program/list" , "model" , model);
		
	}
	
}
