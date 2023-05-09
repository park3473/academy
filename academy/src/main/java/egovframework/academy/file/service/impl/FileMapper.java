package egovframework.academy.file.service.impl;

import java.util.List;

import egovframework.academy.file.model.FileVo;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("FileMapper")
public interface FileMapper {

	public void setFileData(FileVo filevo);

	public List<?> getFileList(FileVo filevo);

	public void setFileUpdate(FileVo fileVo);

	
}
