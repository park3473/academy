package egovframework.academy.user.program.service;

import org.springframework.ui.ModelMap;

import egovframework.academy.user.program.model.UserProgramVo;

public interface UserProgramService {

	ModelMap getListData(UserProgramVo userProgramVo);

}
