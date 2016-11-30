package edu.spring.project03.service;

import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.PersonalVO;

// 비즈니스 로직을 구현하는 인터페이스
// CRUD: Create, Read, Update, Delete
public interface MemberService {

   // MemberVO
   public abstract MemberVO login(MemberVO membervo);

   public abstract String readUserid(String userid);

   public abstract int createMember(MemberVO membervo);

   public abstract int readMnobyUserid(String userid);

   
   // PersonalVO
   public abstract String readNickname(String nickname);

   public abstract int createPersional(PersonalVO personalvo);
   
   
   // ImgVO
   public abstract int createProfile(ImgVO imgvo);
   

   // 특정 회원 검색

   // PersonalVO

   // Create: 새로운 회원 가입
   // public abstract int create(MemberVO vo);
   // Read 1: 회원 전체 검색

   // Read 2: 특정 회원(userid) 검색

   // Update: 특정 회원(userid)의 비번(pwd)과 이메일(email) 수정
   // public abstract int update(MemberVO vo);
   // Delete: 특정 회원(userid)의 정보 삭제
   // public abstract int delete(String userid);

} // end interface MemberService