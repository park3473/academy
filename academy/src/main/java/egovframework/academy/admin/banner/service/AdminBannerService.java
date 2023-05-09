package egovframework.academy.admin.banner.service;

import org.springframework.ui.ModelMap;

import egovframework.academy.admin.banner.model.AdminBannerVo;

public interface AdminBannerService {

	public ModelMap getAllList(AdminBannerVo adminBannerVo);

	public void setBannerData(AdminBannerVo adminBannerVo, String string);
	
}
