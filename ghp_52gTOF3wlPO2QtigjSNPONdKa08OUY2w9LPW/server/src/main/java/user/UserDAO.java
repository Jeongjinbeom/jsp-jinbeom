package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

public class UserDAO {

	private UserDAO() {
		
	}

	private static UserDAO instance = new UserDAO();


	public static UserDAO getInstance() {
		return instance;
	}
	
	// 2. DTO에 대한 객체 배열 (ArrayList)
	private ArrayList<UserDTO> users =null;
	
	
	// 3. 실제 데이터베이스에 연동할 객체들 (SQL)
	// ㄴ 1) Connection (DB 연동)
	// ㄴ 2) DB에 쿼리를 보낼 준비
	// ㄴ 3) excute된 쿼리에 대한 결과값을 가져와줌
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	
	public Connection getConnection() {
		try {
			// 드라이버 연동 (jdbc mysql connector(.tor)
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/REGISTER"; // 데이터베이스 주소
			String id = "root";
			String pw = "wlsqja123";

			conn = DriverManager.getConnection(url, id, pw);

			if (conn != null) {
				System.out.println("DB연동성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			System.out.println("DB연동실패");
		}
		return conn;
	}
	
	// 데이터 조회
	public ArrayList<UserDTO> getUsers() {
	
		try {
			conn = getConnection();
			
			String sql ="select * from USER";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			users = new ArrayList<>();
			
			while (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String gender = rs.getString(4);
				String PN = rs.getString(5);
				String email = rs.getString(6);
				String address = rs.getString(7);
				Timestamp regDate = rs.getTimestamp(8);
				
				users.add(new UserDTO(id,pw,name,gender,PN,email,address,regDate));
				
			}
			
			System.out.println("데이터 불러오기 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터 불러오기 실패");
		}
		
		
		return users;
	}
	
	// 회원 추가
	public int addUser(UserDTO user) {
		
		// 아이디 중복처리
			try {
				UserDTO newUser = new UserDTO(user.getId(), user.getPw(), user.getName(),user.getGender(), user.getPN(), user.getEmail(), user.getAddress(), new Timestamp(Calendar.getInstance().getTimeInMillis()));
				
				conn = getConnection();
				
				String sql = "insert into USER values(?,?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, newUser.getId());
				pstmt.setString(2, newUser.getPw());
				pstmt.setString(3, newUser.getName());	
				pstmt.setString(4, newUser.getGender());
				pstmt.setString(5, newUser.getPN());
				pstmt.setString(6, newUser.getEmail());
				pstmt.setString(7, newUser.getAddress());
				pstmt.setTimestamp(8, newUser.getRegDate());
				
				pstmt.executeUpdate();
				
				this.users.add(newUser);
				System.out.println("가입성공");
				
				return users.size();

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				System.out.println("가입실패");
			}
		
		return -1;
	}

	// 중복검사
	public boolean checkID(String id) {
		users = new ArrayList<UserDTO>();
		users = getUsers();
		
		boolean check = true;
		for(int i=0; i<users.size(); i++) {
			if(users.get(i).getId().equals(id)) {
				check = false;
			}
		}
		return check;
	}
	
	// 로그인
	
	public boolean loginCheck(String id, String pw) {
		users = getUsers();
		
		for(UserDTO user : users) {
			if(user.getId().equals(id) && user.getPw().equals(pw)) {
				return true;
			}
		}
		
		return false;
	}


	
	

}
