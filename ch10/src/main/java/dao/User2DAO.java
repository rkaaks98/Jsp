package dao;

public class User2DAO {
  
  private static final User2DAO INSTANCE = new User2DAO(); 
  public static User2DAO getInstance() {
     return INSTANCE;
  }
  private User2DAO() {}

}
