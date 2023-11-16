package egovframework.academy.admin.program.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.system.util.PageVO;

import egovframework.academy.admin.program.model.AdminProgramTagsVo;
import egovframework.academy.admin.program.model.AdminProgramVo;
import egovframework.academy.admin.program.model.AdminTagsVo;
import egovframework.academy.admin.program.service.AdminProgramService;

@Service("adminProgramService")
@Transactional
public class AdminProgramServiceImpl implements AdminProgramService {

	@Resource(name="adminProgramMapper")
	AdminProgramMapper adminProgramMapper;

	@Override
	public ModelMap getListData(AdminProgramVo adminProgramVo) {
		
		ModelMap model = new ModelMap();
		
		List<?> list = adminProgramMapper.getListData(adminProgramVo);
		
		System.out.println("size : " + list.size());
		
		int itemtotalcount = adminProgramMapper.getListDataCnt(adminProgramVo);
		int itemcount = adminProgramVo.getITEM_COUNT();
		int itempage = adminProgramVo.getITEM_PAGE();
		
		PageVO pageVo = new PageVO(itemcount, itemtotalcount, itempage);
		
		if(pageVo.isItempagenext() == true) {
			model.put("itempagenext", "true");
		}else {
			model.put("itempagenext", "false");
		}
		
		System.out.println("page : " + pageVo.getItempage());
		
		model.put("page", pageVo.getItempage());
		model.put("itemcount", pageVo.getItemCount());
		model.put("itempagestart", pageVo.getItempagestart());
		model.put("itempageend", pageVo.getItempageend());
		model.put("itemtotalcount", pageVo.getItemtotalcount());
		model.put("itemtotalpage", pageVo.getItemtotalpage());
		
		model.put("list", list);
		
		List<?> taglist = adminProgramMapper.getAllTags();
	    Map<String, List<String>> groupedTags = new HashMap<>();

	    for (Object rowObj : taglist) {
	        Map<String, Object> row = (Map<String, Object>) rowObj;

	        String group = (String) row.get("group");
	        String name = (String) row.get("name");

	        if (!groupedTags.containsKey(group)) {
	            groupedTags.put(group, new ArrayList<String>());
	        }

	        groupedTags.get(group).add(name);
	    }

	    model.addAttribute("groupedTags", groupedTags);
		
		return model;
		
	}

	@Override
	public String setProgramData(AdminProgramVo adminProgramVo, String type) {
		
		String result = "";
		
		switch (type) {
		case "insert":
			adminProgramMapper.setProgramDataInsert(adminProgramVo);
			
			System.out.println("idx : " + adminProgramVo.getIdx());
			
			result = adminProgramVo.getIdx();
			
			break;
		case "delete":
			
			adminProgramMapper.setProgramDataDelete(adminProgramVo);
			
			break;
		case "update":
			
			adminProgramMapper.setProgramDataUpdate(adminProgramVo);
			
			break;
		}
		
		return result;
		
	}

	@Override
	public ModelMap getViewData(AdminProgramVo adminProgramVo) {
		
		ModelMap model = new ModelMap();
		
		AdminProgramVo vo = new AdminProgramVo();
		
		vo = adminProgramMapper.getViewData(adminProgramVo);
		
		model.put("view", vo);
		
		List<?> taglist = adminProgramMapper.getAllTags();
	    Map<String, List<String>> groupedTags = new HashMap<>();

	    for (Object rowObj : taglist) {
	        Map<String, Object> row = (Map<String, Object>) rowObj;

	        String group = (String) row.get("group");
	        String name = (String) row.get("name");

	        if (!groupedTags.containsKey(group)) {
	            groupedTags.put(group, new ArrayList<String>());
	        }

	        groupedTags.get(group).add(name);
	    }

	    model.addAttribute("groupedTags", groupedTags);
	    
		return model;
	}

	@Override
	public ModelMap getAllTags(AdminTagsVo adminTagsVo) {
		
		ModelMap modelMap = new ModelMap();
	    
	    List<?> list = adminProgramMapper.getAllTags();
	    Map<String, List<Map<String, Object>>> groupedTags = new HashMap<>();

	    for (Object rowObj : list) {
	        if (rowObj instanceof Map) {
	            Map<String, Object> row = (Map<String, Object>) rowObj;

	            int idx = (Integer) row.get("idx");
	            String group = (String) row.get("group");
	            String name = (String) row.get("name");

	            Map<String, Object> tagInfo = new HashMap<>();
	            tagInfo.put("idx", idx);
	            tagInfo.put("name", name);
	            
	            if (!groupedTags.containsKey(group)) {
	                groupedTags.put(group, new ArrayList<Map<String, Object>>());
	            }

	            groupedTags.get(group).add(tagInfo);
	        }
	    }

	    modelMap.addAttribute("groupedTags", groupedTags);
	    return modelMap;
	    
	}

	@Override
	public void setTagsData(AdminTagsVo adminTagsVo, String type) {
		
		switch (type) {
		case "insert":
			
			adminProgramMapper.setTagsDataInsert(adminTagsVo);
			
			break;
		case "update":
			
			adminProgramMapper.setTagsDataUpdate(adminTagsVo);
			
			break;
		case "delete":
		
			adminProgramMapper.setTagsDataDelete(adminTagsVo);
			
			break;
		}
		
		
	}

	@Override
	public void setProgramTags(AdminProgramTagsVo proTags) {
		
		adminProgramMapper.setProgramTags(proTags);
		
	}

	
}
