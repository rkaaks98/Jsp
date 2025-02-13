package service;

import dao.User2DAO;
import dto.User2DTO;

public class User2Service {

  
  //싱글톤
  private static final User2Service INSTANCE = new User2Service(); 
  public static User2Service getInstance() {
     return INSTANCE;
  }
  private User2Service() {}
  
  //DAO 호출
  private User2DAO dao = User2DAO.getInstance();
  
  public void registerUser1 (User2DTO dto) {
    
  }
  
}
