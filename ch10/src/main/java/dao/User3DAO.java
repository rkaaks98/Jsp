package dao;

import java.util.ArrayList;
import java.util.List;
import dto.User3DTO;
import util.DBHelper;
import util.SQL;

public class User3DAO extends DBHelper {
  
  private static final User3DAO INSTANCE = new User3DAO();
  public static User3DAO getinstance() {
    return INSTANCE;
  }
  private User3DAO() {}
  
  //기본 CRUD
  public void insertUser3(User3DTO dto) {
    try {
      
      conn = getConnection();
      psmt = conn.prepareStatement(SQL.INSERT_USER3);
      psmt.setString(1, dto.getUid());
      psmt.setString(1, dto.getName());
      psmt.setString(1, dto.getBirth());
      psmt.setString(1, dto.getHp());
      psmt.setString(1, dto.getAddr());
      psmt.executeUpdate();
      closeAll();
      
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
  public User3DTO selectUser3(String uid) {
    
    try {
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }
  public List<User3DTO> selectAllUser3() {
    List<User3DTO> dtos = new ArrayList<User3DTO>();
    
    try {
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    return dtos;
  }
  public void updateUser3(User3DTO dto) {
    
    try {
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    
  }
  public void deleteUser3(String uid) {
    
    try {
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    
  }

}
