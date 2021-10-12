package member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

public class LogoutService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//세션 삭제
		HttpSession session = request.getSession();
		
		session.removeAttribute("memName");
		session.removeAttribute("memId");
		
		session.invalidate();

		//응답
		return "/member/logout.jsp";
	}

}
