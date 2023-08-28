package egovframework.academy.admin.program.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.system.util.SUtil;

import egovframework.academy.admin.program.model.AdminProgramVo;
import egovframework.academy.admin.program.service.AdminProgramService;

@Controller
public class AdminProgramController {

	@Autowired
	AdminProgramService adminProgramService;
	
	@RequestMapping(value="/admin/program/list.do" , method = RequestMethod.GET)
	public ModelAndView AdminProgramListGet(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , HttpServletRequest request , HttpServletResponse response) {
		
		System.out.println("PAGE : " + AdminProgramVo.getPAGE());
		System.out.println("ITEM_COUNT : " + AdminProgramVo.getITEM_COUNT());
		System.out.println("TAGS : " + AdminProgramVo.getTags());
		
		if(AdminProgramVo.getTags().equals("")) {
			
			AdminProgramVo.setTags("All");
			
		}
		
		String PAGE = request.getParameter("PAGE") != null ? request
				.getParameter("PAGE") : "0";
		String ITEM_COUNT = request.getParameter("ITEM_COUNT") != null ? request
				.getParameter("ITEM_COUNT") : "10";
		
		AdminProgramVo.setPAGE(Integer.parseInt(PAGE));
		AdminProgramVo.setITEM_COUNT(Integer.parseInt(ITEM_COUNT));
		
		int pagelimit = AdminProgramVo.getPAGE() * AdminProgramVo.getITEM_COUNT();
		
		AdminProgramVo.setLIMIT(Integer.parseInt(ITEM_COUNT));
		AdminProgramVo.setOFFSET(pagelimit);
		
		ModelMap model = new ModelMap();
		
		model = adminProgramService.getListData(AdminProgramVo);
		
		model.put("beforeData", AdminProgramVo);
		
		return new ModelAndView("admin/program/list" , "model" , model);
		
	}
	
	@RequestMapping(value="/admin/program/insert.do" , method = RequestMethod.GET)
	public ModelAndView AdminProgramInsert(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , HttpServletRequest request , HttpServletResponse response) {
		
		ModelMap model = new ModelMap();
		
		model = adminProgramService.getAllTags();
		
		return new ModelAndView("admin/program/insert" , "model" , model);
		
	}
	
	@RequestMapping(value="/admin/program/insert.do" , method = RequestMethod.POST , produces = "application/json; charset=utf8")
	@ResponseBody
	public String AdminProgramDataInsert(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , MultipartHttpServletRequest request , HttpServletResponse response) {
		
		if(AdminProgramVo.getImage_change_bool().equals("true")) {
			
			String drv = request.getRealPath("");
			drv = drv.substring(0 , drv.length()) + "./resources/" + ((HttpServletRequest) request).getContextPath() + "/upload/program/image/";
			
			String filename = SUtil.setFileUpload(request, drv);
			
			AdminProgramVo.setImage(filename);
			
		}
		
		String result = adminProgramService.setProgramData(AdminProgramVo , "insert");
		
		System.out.println("result : " + result);
		
		return result;
		
	}
	
	@RequestMapping(value="/admin/program/delete.do" , method = RequestMethod.POST)
	public void AdminProgramDataDelete(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , HttpServletRequest request , HttpServletResponse response) {
		
		adminProgramService.setProgramData(AdminProgramVo, "delete");
		
	}
	
}
