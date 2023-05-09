package egovframework.academy.menu.service.impl;

import java.util.List;

import egovframework.academy.menu.model.MenuVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("MenuMapper")
public interface MenuMapper {

	List<?> getMenuList();

	void setMenuInsertData(MenuVo menuVo);

	void setMenuUpdateData(MenuVo menuVo);

	void setMenuDeleteData(MenuVo menuVo);

	void setMenuDeleteList(MenuVo menuVo);

	void setMenuTitleReOrder(MenuVo menuVo);

	void setMenuSeqReOrder(MenuVo menuVo);

}
