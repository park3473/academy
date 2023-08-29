package egovframework.academy.user.program.service.impl;

import java.util.List;

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
		
		//태그 불러오기
		String value = "";
		
		value = "분야:%";
		List<?> filedTags = userProgramMapper.getAllTags(value);
		
		value = "영역:%";
		List<?> AreaTags = userProgramMapper.getAllTags(value);
		
		value = "난이도:%";
		List<?> DiffTags = userProgramMapper.getAllTags(value);
		
		value = "과정:%";
		List<?> ProcessTags = userProgramMapper.getAllTags(value);
		
		model.put("filedTags", filedTags);
		model.put("AreaTags", AreaTags);
		model.put("DiffTags", DiffTags);
		model.put("ProcessTags", ProcessTags);
		
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
