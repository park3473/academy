package egovframework.academy.admin.board.service.impl;

import java.util.List;

import org.springframework.ui.ModelMap;

import egovframework.academy.admin.board.model.AdminBoardVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("adminBoardMapper")
public interface AdminBoardMapper {

	public List<?> getAllList(AdminBoardVo adminBoardVo);

	public int getAllListCnt(AdminBoardVo adminBoardVo);

	public AdminBoardVo getBoardView(AdminBoardVo adminBoardVo);

	public void setBoardInsert(AdminBoardVo adminBoardVo);

	public void setBoardUpdate(AdminBoardVo adminBoardVo);

	public void setBoardDelete(AdminBoardVo adminBoardVo);

	public AdminBoardVo getBoardConfig(AdminBoardVo adminBoardVo);

}
