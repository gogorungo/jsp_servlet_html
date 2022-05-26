package board_p;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardService{
	
	// 파라미터와 attribute 를 받아쓴다
	void execute(HttpServletRequest request, HttpServletResponse response);
}
