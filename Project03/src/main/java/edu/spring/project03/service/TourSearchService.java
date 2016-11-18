package edu.spring.project03.service;

import java.util.List;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourSearchService {

	public abstract List<ImgVO> read_region(String region);

	public abstract List<ImgVO> read_region_date(TourRegisterVO vo);

	public abstract List<ImgVO> read_region_image(ImgVO vo);

}
