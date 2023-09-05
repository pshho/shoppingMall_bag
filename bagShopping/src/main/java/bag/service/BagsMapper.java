package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.BagsDTO;

@Mapper
public interface BagsMapper {
	List<BagsDTO> bagsList(BagsDTO bagDTO);
	BagsDTO bags(BagsDTO bagDTO);
	List<BagsDTO> cartBags(String memberId);
}
