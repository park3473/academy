package egovframework.academy.admin.board.service.impl;

import java.util.List;

import org.springframework.ui.ModelMap;

import egovframework.academy.admin.board.model.AdminBoardDataVo;
import egovframework.academy.admin.board.model.AdminBoardReplyVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("adminBoardDataMapper")
public interface AdminBoardDataMapper {

	public List<?> getAllList(AdminBoardDataVo adminBoardDataVo);

	public int getAllListCnt(AdminBoardDataVo adminBoardDataVo);

	public void setBoardDataInsert(AdminBoardDataVo adminBoardDataVo);

	public void setBoardDataUpdate(AdminBoardDataVo adminBoardDataVo);

	public void setBoardDataDelete(AdminBoardDataVo adminBoardDataVo);

	public AdminBoardDataVo getBoardData(AdminBoardDataVo adminBoardDataVo);

	public List<?> getReplyAllList(AdminBoardReplyVo adminBoardReplyVo);

	public void setBoardReplyInsert(AdminBoardReplyVo adminBoardReplyVo);

	public void setBoardReplyUpdate(AdminBoardReplyVo adminBoardReplyVo);

	public void setBoardReplyDelete(AdminBoardReplyVo adminBoardReplyVo);

	public void setBoardReplyListDelete(AdminBoardDataVo adminBoardDataVo);


}
