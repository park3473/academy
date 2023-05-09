package egovframework.academy.admin.board.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import egovframework.academy.admin.board.model.AdminBoardDataVo;
import egovframework.academy.admin.board.model.AdminBoardReplyVo;
import egovframework.academy.admin.board.model.AdminBoardVo;

@Service
public interface AdminBoardDataService {

	public ModelMap getAllList(AdminBoardDataVo adminBoardDataVo);

	public String setBoardData(AdminBoardDataVo adminBoardDataVo, String string);

	public ModelMap getBoardData(AdminBoardDataVo adminBoardDataVo);

	public ModelMap getReplyAllList(AdminBoardReplyVo adminBoardReplyVo);

	public void setBoardReplyData(AdminBoardReplyVo adminBoardReplyVo, String string);

	public void setBoardReplyDataList(AdminBoardDataVo adminBoardDataVo, String string);

}
