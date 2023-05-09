package egovframework.academy.user.subpage.service;

import org.springframework.ui.ModelMap;

import egovframework.academy.user.subpage.model.UserSubPageVo;

public interface UserSubpageService {

	public ModelMap getSubPageData(UserSubPageVo userSubPageVo);
	
}
