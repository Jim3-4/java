package days05.board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBconn;
 
@WebServlet("/cstvsboard/write.htm")
public class Write extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Write() {
        super(); 
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> Write.doGet() 호출됨.");
		
		// write.jsp 포워딩
		// 3:01 수업 시작
		String path = "/days05/board/write.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	} // doGet
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 톰캣 8     UTF-8   ->  post 요청 -> ISO 8859-1 인코딩 X 
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("> Write.doPost() 호출됨.");
		
		// 1. 파라미터 -> BoardDTO dto 생성
		String writer = request.getParameter("writer");  
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int tag = Integer.parseInt( request.getParameter("tag") );
		
		BoardDTO dto = new BoardDTO();
		dto.setWriter(writer);
		dto.setPwd(pwd);
		dto.setEmail(email);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setTag(tag);		
		
		// 2. insert( dto )
		Connection conn = DBconn.getConnection();
		BoardDAOImpl dao = new BoardDAOImpl(conn);
		int rowCount = 0;
		try {
			rowCount = dao.insert(dto);
		} catch (SQLException e) { 
			System.out.println("> Write.java doPost() Exception...");
			e.printStackTrace();
		}
		DBconn.close();
		
		// 3.  list.htm 리다이렉트 요청   ->   List.java 서블릿 호출 ->   list.jsp 포워딩
		String location = "/jspPro/cstvsboard/list.htm";
		if( rowCount == 1)    location +="?write=success";
		response.sendRedirect(location); 
		
	} // doPost

} // class













