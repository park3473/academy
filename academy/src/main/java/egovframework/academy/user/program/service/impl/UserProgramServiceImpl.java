package egovframework.academy.user.program.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.system.util.PageVO;

import egovframework.academy.user.program.model.UserProgramVo;
import egovframework.academy.user.program.service.UserProgramService;

@Service("userProgramService")
public class UserProgramServiceImpl implements UserProgramService {

	@Resource(name="userProgramMapper")
	UserProgramMapper userProgramMapper;

	@Override
	public ModelMap getListData(UserProgramVo userProgramVo) {
		
		ModelMap model = new ModelMap();
		
		List<?> list = userProgramMapper.getListData(userProgramVo);
		
		System.out.println("size : " + list.size());
		
		int itemtotalcount = userProgramMapper.getListDataCnt(userProgramVo);
		int itemcount = userProgramVo.getITEM_COUNT();
		int itempage = userProgramVo.getITEM_PAGE();
		
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
		
		//태그
		List<?> taglist = userProgramMapper.getAllTags();
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
	public ModelMap getViewData(UserProgramVo userProgramVo) {
		
		ModelMap model = new ModelMap();
		
		UserProgramVo vo = new UserProgramVo();
		
		vo = userProgramMapper.getViewData(userProgramVo);
		
		model.put("view", vo);
		
		List<?> tagList = userProgramMapper.getViewTags(userProgramVo);
		
		model.put("taglist", tagList);
		
		return model;
	}
	
	
	
}
