package edu.spring.project03.persistence;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.PersonalVO;

public interface MemberDAO {

   // MemberVO
   public abstract MemberVO login(MemberVO membervo);

   public abstract String selectUserid(String userid);

   public abstract int insertMember(MemberVO membervo);

   public abstract int selectUserMno(String userid);

   
   // PersonalVO
   public abstract String selectNickname(String nickname);

   public abstract int insertPersional(PersonalVO personalvo);
   
   public abstract String getNickname(int mno);
   
   
   // ImgVO
   public abstract int insertProfile(ImgVO imgvo);

   /**
    *
    */
   public abstract MemberVO select(int mno);

} // end interface MemberDAO