package egovframework.academy.user.subpage.service.impl;

import java.util.List;

import egovframework.academy.user.subpage.model.UserSubPageVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userSubPageMapper")
public interface UserSubPageMapper {

	public UserSubPageVo getSubPageData(UserSubPageVo userSubPageVo);
	
}
