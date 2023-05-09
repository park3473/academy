package egovframework.academy.user.board.service.impl;

import java.util.List;

import egovframework.academy.user.board.model.UserBoardDataVo;
import egovframework.academy.user.board.model.UserBoardReplyVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userBoardDataMapper")
public interface UserBoardDataMapper {

	public List<?> getAllList(UserBoardDataVo userBoardDataVo);

	public int getAllListCnt(UserBoardDataVo userBoardDataVo);

	public void setBoardDataInsert(UserBoardDataVo userBoardDataVo);

	public void setBoardDataUpdate(UserBoardDataVo userBoardDataVo);

	public UserBoardDataVo getBoardData(UserBoardDataVo userBoardDataVo);

	public void DelBoardData(UserBoardDataVo userBoardDataVo);

	public List<?> getReplyAllList(UserBoardReplyVo userBoardReplyVo);

	public void DelBoardReplyDataList(UserBoardReplyVo replyVo);

	public void DelBoardReplyDataOne(UserBoardReplyVo replyVo);

	public void setBoardReplyUpdate(UserBoardReplyVo userBoardReplyVo);

	public void setBoardReplyInsert(UserBoardReplyVo userBoardReplyVo);

	public void setBoardDataRdCnt(UserBoardDataVo userBoardDataVo);

	public List<?> getNoticeList(int noticeCnt);

	public List<?> getInfoList(int infoCnt);


}
