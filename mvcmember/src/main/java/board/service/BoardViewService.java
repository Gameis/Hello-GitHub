package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

public class BoardViewService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		BoardDAO boardDAO = BoardDAO.getInstance();
		BoardDTO boardDTO = boardDAO.content(seq);
		
		request.setAttribute("boardDTO", boardDTO);
		
		return "/board/boardView.jsp";
		
	}

}
