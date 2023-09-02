package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.FileDTO;

@Mapper
public interface FileMapper {
	void insertFile(FileDTO fDTO);
	void updateFile(FileDTO fDTO);
	List<FileDTO> searchfiles();
	void filesDelete(FileDTO fDTO);
	int writingFileDelete(FileDTO fDTO);
	void boardFileDelete(FileDTO fDTO);
	List<FileDTO> boardDelete(FileDTO fDTO);
}
