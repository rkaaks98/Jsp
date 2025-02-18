package service;

import java.util.List;
import dao.User3DAO;
import dto.User3DTO;

public class User3Service {
  
  private static final User3Service INSTANCE = new User3Service();
  public static User3Service getinstance() {
    return INSTANCE;
  }
    private User3Service() {}
    
    //DAO 호출
    private User3DAO dao = User3DAO.getinstance();
    
    public void registerUser3 (User3DTO dto) {
      dao.insertUser3(dto);
    }
    public User3DTO findUser3(String uid) {
      return dao.selectUser3(uid);
    }
    public List<User3DTO> findAllUser3() {
      return dao.selectAllUser3();
    }
    public void modifyUser3(User3DTO dto) {
      dao.updateUser3(dto);
    }
    public void removeUser3(String uid) {
      dao.deleteUser3(uid);
    }

}
