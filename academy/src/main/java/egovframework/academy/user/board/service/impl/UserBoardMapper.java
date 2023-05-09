package egovframework.academy.user.board.service.impl;

import java.util.List;

import egovframework.academy.user.board.model.UserBoardVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userBoardMapper")
public interface UserBoardMapper {

	List<?> getAllList(UserBoardVo userBoardVo);

	int getAllListCnt(UserBoardVo userBoardVo);

	UserBoardVo getBoard(UserBoardVo userBoardVo);

	void setBoardInsert(UserBoardVo userBoardVo);

	void setBoardUpdate(UserBoardVo userBoardVo);

	void delBoard(UserBoardVo userBoardVo);

	UserBoardVo getBoardView(String board_idx);

	UserBoardVo getBoardConfig(String board_idx);

	
	
}
