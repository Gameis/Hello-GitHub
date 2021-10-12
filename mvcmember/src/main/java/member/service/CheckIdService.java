package member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import memberDAO.MemberDAO;

public class CheckIdService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		MemberDAO memberDAO = MemberDAO.getInstance();
		boolean tf = memberDAO.checkId(request.getParameter("id"));
		
		if(tf) return "/member/checkIdOk.jsp";
		else return "/member/checkIdFail.jsp";
	}

}
