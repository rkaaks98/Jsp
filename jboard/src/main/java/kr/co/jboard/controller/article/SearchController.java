package kr.co.jboard.controller.article;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.jboard.dto.ArticleDTO;
import kr.co.jboard.dto.PageGroupDTO;
import kr.co.jboard.service.ArticleService;

@WebServlet("/article/search.do")
public class SearchController extends HttpServlet {

	private static final long serialVersionUID = 1241516L;
	
	private ArticleService service = ArticleService.INSTANCE;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 수신
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
		//DTO 생성
		ArticleDTO dto = new ArticleDTO();
		dto.setSearchType(searchType);
		dto.setKeyword(keyword);
		logger.debug("dto : " + dto);
		
		//페이징 처리 관련 서비스 호출
		int total= service.getCountArticleBysearch(dto);
		logger.debug("total : " + total);
		
		int lastPageNum = service.getLastPageNum(total);
		logger.debug("lastPageNum : " + lastPageNum);
		
		int currentPage = service.getCurrentPage(pg);
		logger.debug("currentPage : " + currentPage);
		
		int start = service.getStartNum(currentPage);
		logger.debug("start : " + start);
		
		PageGroupDTO pageGroupDTO = service.getCurrentPageGroup(currentPage, lastPageNum);
		int pageStartNum = service.getPageStartNum(total, currentPage);
		logger.debug("pageStartNum : " + pageStartNum);
		
		
		//서비스 호출
		List<ArticleDTO> articles = service.searchAllArticle(dto, start);
		
		//데이터 참조 공유
		req.setAttribute("articles", articles);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("lastPageNum", lastPageNum);
		req.setAttribute("pageStartNum", pageStartNum);
		req.setAttribute("pageGroupDTO", pageGroupDTO);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		
		//뷰 포워드
		RequestDispatcher dispatcher= req.getRequestDispatcher("/WEB-INF/article/searchList.jsp");
		dispatcher.forward(req, resp);
		
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
