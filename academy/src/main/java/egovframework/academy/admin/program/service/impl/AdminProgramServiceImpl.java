package egovframework.academy.admin.program.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.system.util.PageVO;

import egovframework.academy.admin.program.model.AdminProgramVo;
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
		
		//태그 불러오기
		String value = "";
		
		value = "분야:%";
		List<?> filedTags = adminProgramMapper.getAllTags(value);
		
		value = "영역:%";
		List<?> AreaTags = adminProgramMapper.getAllTags(value);
		
		value = "난이도:%";
		List<?> DiffTags = adminProgramMapper.getAllTags(value);
		
		value = "과정:%";
		List<?> ProcessTags = adminProgramMapper.getAllTags(value);
		
		model.put("filedTags", filedTags);
		model.put("AreaTags", AreaTags);
		model.put("DiffTags", DiffTags);
		model.put("ProcessTags", ProcessTags);
		
		return model;
		
	}

	@Override
	public ModelMap getAllTags() {
		
		ModelMap model = new ModelMap();
		
		String value = "";
		
		value = "분야:%";
		List<?> filedTags = adminProgramMapper.getAllTags(value);
		
		value = "영역:%";
		List<?> AreaTags = adminProgramMapper.getAllTags(value);
		
		value = "난이도:%";
		List<?> DiffTags = adminProgramMapper.getAllTags(value);
		
		value = "과정:%";
		List<?> ProcessTags = adminProgramMapper.getAllTags(value);
		
		model.put("filedTags", filedTags);
		model.put("AreaTags", AreaTags);
		model.put("DiffTags", DiffTags);
		model.put("ProcessTags", ProcessTags);
		
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

	
}
