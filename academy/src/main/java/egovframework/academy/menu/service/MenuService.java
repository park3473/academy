package egovframework.academy.menu.service;

import java.util.List;

import egovframework.academy.menu.model.MenuVo;

public interface MenuService {

	public List<?> getMenuList();

	public void setMenuData(MenuVo menuVo, String string);

}
