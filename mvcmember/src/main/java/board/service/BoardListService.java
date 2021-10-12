package board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.dao.BoardDAO;

public class BoardListService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		int endNum = pg * 5;
		int startNum = endNum - 4;
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		List<BoardDTO> boardList = boardDAO.print(startNum, endNum);
		
		int totalA = boardDAO.totalA();
		int totalP = (totalA + 4) / 5;
		
		request.setAttribute("totalP", totalP);
		
		request.setAttribute("boardList", boardList);
		
		return "/board/boardList.jsp?pg=" + pg;
	}

}
