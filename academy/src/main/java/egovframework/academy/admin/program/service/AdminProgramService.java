package egovframework.academy.admin.program.service;

import org.springframework.ui.ModelMap;

import egovframework.academy.admin.program.model.AdminProgramVo;

public interface AdminProgramService {

	ModelMap getListData(AdminProgramVo adminProgramVo);

	ModelMap getAllTags();

	String setProgramData(AdminProgramVo adminProgramVo, String string);

	ModelMap getViewData(AdminProgramVo adminProgramVo);

}
