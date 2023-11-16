package egovframework.academy.admin.program.service.impl;

import java.util.List;

import egovframework.academy.admin.program.model.AdminProgramTagsVo;
import egovframework.academy.admin.program.model.AdminProgramVo;
import egovframework.academy.admin.program.model.AdminTagsVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("adminProgramMapper")
public interface AdminProgramMapper {

	List<?> getListData(AdminProgramVo adminProgramVo);

	int getListDataCnt(AdminProgramVo adminProgramVo);

	void setProgramDataInsert(AdminProgramVo adminProgramVo);

	void setProgramDataDelete(AdminProgramVo adminProgramVo);

	void setProgramDataUpdate(AdminProgramVo adminProgramVo);

	AdminProgramVo getViewData(AdminProgramVo adminProgramVo);

	List<?> getViewTags(AdminProgramVo adminProgramVo);

	List<?> getAllTags();

	void setTagsDataInsert(AdminTagsVo adminTagsVo);

	void setTagsDataUpdate(AdminTagsVo adminTagsVo);

	void setTagsDataDelete(AdminTagsVo adminTagsVo);

	void setProgramTags(AdminProgramTagsVo proTags);

}
