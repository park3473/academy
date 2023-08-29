package egovframework.academy.user.program.service.impl;

import java.util.List;

import org.springframework.ui.ModelMap;

import egovframework.academy.user.program.model.UserProgramVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userProgramMapper")
public interface UserProgramMapper {

	List<?> getListData(UserProgramVo userProgramVo);

	int getListDataCnt(UserProgramVo userProgramVo);
	
	List<?> getAllTags(String value);

	UserProgramVo getViewData(UserProgramVo userProgramVo);

	List<?> getViewTags(UserProgramVo userProgramVo);

}
