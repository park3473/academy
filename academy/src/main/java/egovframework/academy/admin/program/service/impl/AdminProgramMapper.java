package egovframework.academy.admin.program.service.impl;

import java.util.List;

import egovframework.academy.admin.program.model.AdminProgramVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("adminProgramMapper")
public interface AdminProgramMapper {

	List<?> getListData(AdminProgramVo adminProgramVo);

	int getListDataCnt(AdminProgramVo adminProgramVo);

	List<?> getAllTags(String value);

	void setProgramDataInsert(AdminProgramVo adminProgramVo);

	void setProgramDataDelete(AdminProgramVo adminProgramVo);

	void setProgramDataUpdate(AdminProgramVo adminProgramVo);

}
