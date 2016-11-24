package edu.spring.project03.persistence;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.TourRegisterVO;

public interface TourRegisterDAO {
	
	public abstract int insert(TourRegisterVO vo);
	
	public abstract int insertThumnail(ImgVO vo);
	public abstract int selectTrip_no(String content);
	

}
