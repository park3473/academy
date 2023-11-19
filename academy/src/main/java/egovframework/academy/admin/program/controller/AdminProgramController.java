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

import egovframework.academy.admin.program.model.AdminProgramTagsVo;
import egovframework.academy.admin.program.model.AdminProgramVo;
import egovframework.academy.admin.program.model.AdminTagsVo;
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
			
		}else {
			
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
	public ModelAndView AdminProgramInsert(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , @ModelAttribute("AdminTagsVo")AdminTagsVo AdminTagsVo , HttpServletRequest request , HttpServletResponse response) {
		
		ModelMap model = new ModelMap();
		
		model = adminProgramService.getAllTags(AdminTagsVo);
		
		return new ModelAndView("admin/program/insert" , "model" , model);
		
	}
	
	@RequestMapping(value="/admin/program/insert.do" , method = RequestMethod.POST , produces = "application/json; charset=utf8")
	@ResponseBody
	public String AdminProgramDataInsert(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , MultipartHttpServletRequest request , HttpServletResponse response) {
		
		if(AdminProgramVo.getImage_change_bool().equals("true")) {
			
			String drv = request.getRealPath("");
			drv = drv.substring(0 , drv.length()) + "./resources/" + ((HttpServletRequest) request).getContextPath() + "/upload/program/image/";
			
			System.out.println("drv : " + drv);
			
			String filename = SUtil.setFileUpload(request, drv);
			
			AdminProgramVo.setImage(filename);
			
		}
		
		String result = adminProgramService.setProgramData(AdminProgramVo , "insert");
		
		System.out.println("result : " + result);
		
		System.out.println("tags : " + AdminProgramVo.getTags());
		
		String[] tagsArray = AdminProgramVo.getTags().split(",");
		
		for(String tag : tagsArray) {
			
			System.out.println("tag_idx : " + tag);
			System.out.println("pro_idx : " + result);
			AdminProgramTagsVo ProTags = new AdminProgramTagsVo();
			ProTags.setPro_idx(result);
			ProTags.setTag_idx(tag);
			
			adminProgramService.setProgramTags(ProTags);
			
		}
		
		return result;
		
	}
	
	@RequestMapping(value="/admin/program/delete.do" , method = RequestMethod.POST)
	public void AdminProgramDataDelete(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , HttpServletRequest request , HttpServletResponse response) {
		
		adminProgramService.setProgramData(AdminProgramVo, "delete");
		
	}
	
	@RequestMapping(value="/admin/program/view.do" , method = RequestMethod.GET)
	public ModelAndView AdminProgramViewData(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , HttpServletRequest request , HttpServletResponse response) {
		
		ModelMap model = new ModelMap();
		
		model = adminProgramService.getViewData(AdminProgramVo);
		
		return new ModelAndView("admin/program/view" , "model" , model);
		
	}
	
	@RequestMapping(value="/admin/program/update.do" , method = RequestMethod.POST)
	public void AdminProgramUpdateData(@ModelAttribute("AdminProgramVo")AdminProgramVo AdminProgramVo , HttpServletRequest request , HttpServletResponse response) {
		
		adminProgramService.setProgramData(AdminProgramVo , "update");
		
	}
	
	/*태그 부분들*/
	@RequestMapping(value="/admin/tags/list.do" , method = RequestMethod.GET)
	public ModelAndView AdminTagsListGet(@ModelAttribute("AdminTagsVo")AdminTagsVo AdminTagsVo , HttpServletRequest request , HttpServletResponse response) {
		
		ModelMap model = new ModelMap();
		
		model = adminProgramService.getAllTags(AdminTagsVo);
		
		return new ModelAndView("admin/tags/list" , "model" , model);
		
	}
	
	@RequestMapping(value="/admin/tags/insert.do" , method = RequestMethod.POST)
	public String AdminTagsDataInsert(@ModelAttribute("AdminTagsVo")AdminTagsVo AdminTagsVo , HttpServletRequest request , HttpServletResponse response) {
		
		adminProgramService.setTagsData(AdminTagsVo , "insert");
		
		return "redirect:/admin/tags/list.do";
		
	}
	
	@RequestMapping(value="/admin/tags/update.do" , method = RequestMethod.POST)
	public String AdminTagsDataUpdate(@ModelAttribute("AdminTagsVo")AdminTagsVo AdminTagsVo , HttpServletRequest request , HttpServletResponse response) {
		
		adminProgramService.setTagsData(AdminTagsVo , "update");
		
		return "redirect:/admin/tags/list.do";
		
	}
	
	@RequestMapping(value="/admin/tags/delete.do" , method = RequestMethod.POST)
	public String AdminTagsDataDelete(@ModelAttribute("AdminTagsVo")AdminTagsVo AdminTagsVo , HttpServletRequest request , HttpServletResponse response) {
		
		adminProgramService.setTagsData(AdminTagsVo , "delete");
		
		return "redirect:/admin/tags/list.do";
		
	}
	
}
