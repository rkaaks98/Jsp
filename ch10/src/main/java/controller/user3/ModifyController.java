package controller.user3;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user3/modify.do")
public class ModifyController extends HttpServlet {

  private static final long serialVersionUID = 4165846516L;
  
  
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
    
  //View 포워드
    RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/user3/modify.jsp");
    dispatcher.forward(req, resp);
    
  }
  
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
  }

}


