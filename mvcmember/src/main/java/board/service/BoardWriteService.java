package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

public class BoardWriteService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setName((String)session.getAttribute("memName"));
		boardDTO.setId((String)session.getAttribute("memId"));
		boardDTO.setEmail((String)session.getAttribute("memEmail"));
		boardDTO.setSubject(subject);
		boardDTO.setContent(content);
		
		//DB
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.write(boardDTO);
		return "/board/boardWrite.jsp";
	}

}
