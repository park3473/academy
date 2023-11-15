package egovframework.academy.admin.program.service;

import org.springframework.ui.ModelMap;

import egovframework.academy.admin.program.model.AdminProgramVo;
import egovframework.academy.admin.program.model.AdminTagsVo;

public interface AdminProgramService {

	ModelMap getListData(AdminProgramVo adminProgramVo);

	ModelMap getAllTags(AdminTagsVo adminTagsVo);

	String setProgramData(AdminProgramVo adminProgramVo, String string);

	ModelMap getViewData(AdminProgramVo adminProgramVo);

	void setTagsData(AdminTagsVo adminTagsVo, String string);


}
