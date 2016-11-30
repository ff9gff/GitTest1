package edu.spring.project03.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.spring.project03.domain.ImageFile;
import edu.spring.project03.domain.ImgVO;
import edu.spring.project03.domain.MemberVO;
import edu.spring.project03.domain.PersonalVO;
import edu.spring.project03.service.ImageService;
import edu.spring.project03.service.ImageView;
import edu.spring.project03.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
   private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
   
   public static final String SAVE_IMAGE_DIR = "resources/photo_upload/";   
   
   private int MemberRegisterID = 3;
   
   @Resource(name="imageView")
   private ImageView imageView;
   
   @Autowired
   private ImageService imageService;

   @Autowired
   private MemberService memberService;

   @Autowired
   private JavaMailSenderImpl mailSender;

   @RequestMapping(value = "/member_register01", method = RequestMethod.GET)
   public void register01() {
      logger.info("member_register01.jsp 호출...");

   } // end register01()

   @RequestMapping(value = "/member_register02", method = RequestMethod.GET)
   public void register02() {
      logger.info("member_register02.jsp 호출...");

   } // end register02()

   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public void loginGET() {
      logger.info("loginGET() 호출...");

   } // end loginGET()

   @RequestMapping(value = "/login-post", method = RequestMethod.POST)
   public void loginPOST(MemberVO vo, Model model, String query, HttpServletRequest request) {
      logger.info("loginPOST() 호출...");
      logger.info("입력 ID : " + vo.getUserid());
      logger.info("입력 PW : " + vo.getPwd());

      MemberVO result = memberService.login(vo);
      // logger.info("result : " + result.toString()); // 로그인 실패시 result 값이
      // null 값이 오기 때문에 NullPointerException 발생
      model.addAttribute("login_result", result);
      // 모델 객체에 속성(attribute)를 설정하면,
      // 인터셉터의 postHandle() 메소드의 ModelAndView 객체로 전달됨.

      // login-post 요청을 보낸 주소를 저장
      logger.info("query : " + query);
      if (query != null && !query.equals("null")) {
         // 요청 파라미터 query에 값이 들어 있는 경우
         String dest = query.substring(4); // substring : 문자열을 잘라서, 4번째 문자열부터
                                    // 시작하겠다. (0 부터 시작!)
         logger.info("dest : " + dest);
         request.getSession().setAttribute("dest", dest);
      }

   } // end loginPOST()

   @RequestMapping(value = "logout", method = RequestMethod.GET)
   public String logout(HttpServletRequest req) {
      logger.info("logout() 호출...");

      // 세션에 저장된 로그인 관련 정보를 모두 삭제, 세션 무효화(invalidate)
      HttpSession session = req.getSession();
      session.removeAttribute("login_id");
      session.removeAttribute("mno");
      session.invalidate();

      return "redirect:/";
   } // end logout()

   @RequestMapping(value = "checkid", method = RequestMethod.POST)
   public void checkid(@RequestBody MemberVO vo, HttpServletRequest request, HttpServletResponse response)
         throws IOException {

      logger.info("userid: " + vo.getUserid());

      String checkid = memberService.readUserid(vo.getUserid());
      logger.info("checkid : " + checkid);

      PrintWriter out = response.getWriter();

      if (checkid != null) {
         out.print("NOK");
      } // end if
   } // checkid(request, response)

   @RequestMapping(value = "checknick", method = RequestMethod.POST)
   public void checkid(@RequestBody PersonalVO vo, HttpServletRequest request, HttpServletResponse response)
         throws IOException {

      logger.info("userid: " + vo.getNickname());

      String checknick = memberService.readNickname(vo.getNickname());
      logger.info("checkid : " + checknick);

      PrintWriter out = response.getWriter();

      if (checknick != null) {
         out.print("NOK");
      } // end if
   } // checkid(request, response)

   @RequestMapping(value = "email_auth", method = RequestMethod.POST)
   public void email_auth(Model model, @RequestBody String email, HttpServletResponse response) throws IOException {
      int code = (int) (Math.random() * 10000);
      SimpleMailMessage message = new SimpleMailMessage();
      message.setTo(email);
      logger.info("메일 주소 : " + email);
      message.setSubject("같이가자(With me) 회원가입 인증번호");
      message.setText("인증번호: " + code);
      logger.info("보낸 코드 : " + code);
      mailSender.send(message);

      PrintWriter out = response.getWriter();

      if (code != 0 || code != Integer.valueOf("")) {
         // out.print("OK");
         out.print(code);
         // model.addAttribute("code", code);
      }

      // model.addAttribute("code", code);
   } // end email_auth(model, email)

   @RequestMapping(value = "sign_up", method = RequestMethod.POST)
   public String signUp(@RequestParam MultipartFile imageFile, ModelMap modelMap, Model model, 
         MemberVO membervo, PersonalVO personalvo, RedirectAttributes attr) {
      logger.info("sign_up 호출...");
      logger.info("아이디 : " + membervo.getUserid());
      logger.info("비밀번호 : " + membervo.getPwd());
      
      ImageFile fileInfo = imageService.save(imageFile);
      logger.info("프로필 테스트 : " + fileInfo);
      

      int member_result = memberService.createMember(membervo);
      
      String userid = membervo.getUserid();
      int mno = memberService.readMnobyUserid(userid);

      if (member_result == 1) {
         logger.info("MemberVO insert");

//         String userid = membervo.getUserid();
//         int mno = memberService.readMnobyUserid(userid);

         PersonalVO personal = new PersonalVO(mno, personalvo.getName(), personalvo.getSex(), personalvo.getAge(),
               personalvo.getNickname(), personalvo.getPhone(), personalvo.getAddress(), personalvo.getIntroduce(),
               personalvo.getEmail(), null);

         int personal_result = memberService.createPersional(personal);

         if (personal_result == 1) {
            logger.info("PersonalVO insert");
            attr.addFlashAttribute("insert_result", "success");
         } else {
            attr.addFlashAttribute("insert_result", "fail");
         }

      } else {
         attr.addFlashAttribute("Member_insert_result", "fail");
      } // end if
      
      //ImageFile fileInfo = imageService.save(imageFile);
      
      if (fileInfo != null) {
         logger.info("대표 이미지 주소: " + SAVE_IMAGE_DIR + fileInfo.getFileName());
         
         ImgVO imgvo = new ImgVO(MemberRegisterID, mno, 0, SAVE_IMAGE_DIR + fileInfo.getFileName());
         
         // TODO : profile DAO 등 Mapper 생성!
         int img_result = memberService.createProfile(imgvo);
         
         if(img_result == 1) {
            logger.info("프로필 이미지 등록 성공");               
         } else {
            logger.info("프로필 이미지 등록 실패");
         }
         
      } else {
         logger.info("대실패 ");
      }

      return "redirect:/";

   } // end signUp(membervo, personalvo, attr)
   
   @RequestMapping(value = "find_id", method = RequestMethod.GET)
   public void findId(){
      
//      Model model, HttpServletRequest request, HttpServletResponse response      
//      String name = request.getParameter("name");
//      String email = request.getParameter("email");
      
   } // end findId()

} // end class MemberController