package egovframework.academy.admin.subpage.service;

import org.springframework.ui.ModelMap;

import egovframework.academy.admin.subpage.model.AdminSubPageVo;

public interface AdminSubPageService {

	public ModelMap getAllList(AdminSubPageVo adminSubpageVo);

	public ModelMap getViewData(AdminSubPageVo adminSubpageVo);

	public void setAdminSubPageData(AdminSubPageVo adminSubpageVo, String string);
	
}
