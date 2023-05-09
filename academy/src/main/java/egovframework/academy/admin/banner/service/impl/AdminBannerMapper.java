package egovframework.academy.admin.banner.service.impl;

import java.util.List;

import egovframework.academy.admin.banner.model.AdminBannerVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("adminBannerMapper")
public interface AdminBannerMapper {

	public List<?> getAllList(AdminBannerVo adminBannerVo);

	public int getAllListCnt(AdminBannerVo adminBannerVo);

	public void setBannerDataInsert(AdminBannerVo adminBannerVo);

	public void setBannerDataUpdate(AdminBannerVo adminBannerVo);

	public void setBannerDataDelete(AdminBannerVo adminBannerVo);

	public void setBannerReOrder(AdminBannerVo adminBannerVo);

	
}
