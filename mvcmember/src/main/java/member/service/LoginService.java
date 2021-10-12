package member.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import memberDAO.MemberDAO;

public class LoginService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		//데이터
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//DB
		MemberDAO memberDAO = MemberDAO.getInstance();
		String[] my = memberDAO.check(id, pwd);
		
		//응답
		if(my == null) {
			return "/member/loginFail.jsp";
		}else {
			
			/*
			 * //쿠키 Cookie cookie = new Cookie("memName", name); //쿠키 생성
			 * cookie.setMaxAge(3000); //초 단위 response.addCookie(cookie); //클라이언트로 보내기
			 * 
			 * Cookie cookie2 = new Cookie("memId", id); //쿠키 생성 cookie2.setMaxAge(3000);
			 * //초 단위 response.addCookie(cookie2); //클라이언트로 보내기
			 */			
			//request.setAttribute("name", name);
			
			
			//세션
			HttpSession session = request.getSession();	//세션 생성
			session.setAttribute("memName", my[0]);
			session.setAttribute("memId", my[1]);
			session.setAttribute("memEmail", my[2]);
			
			
			return "/member/loginOk.jsp";
			
		}
	}

}
