/*
 * package kr.co.softsoldesk.DAO;
 * 
 * import java.sql.Connection; import java.sql.Date; import
 * java.sql.PreparedStatement; import java.sql.ResultSet; import
 * java.sql.SQLException;
 * 
 * public class RouletteDAO {
 * 
 * // DB에서 오늘 룰렛을 돌렸는지 확인 public boolean hasUserSpunRouletteToday(int user_idx,
 * Connection conn) throws SQLException { String query =
 * "SELECT COUNT(*) FROM roulette WHERE user_idx = ? AND last_spin_date = CURDATE()"
 * ; try (PreparedStatement pstmt = conn.prepareStatement(query)) {
 * pstmt.setInt(1, user_idx); try (ResultSet rs = pstmt.executeQuery()) { if
 * (rs.next()) { return rs.getInt(1) > 0; } } } return false; }
 * 
 * }
 */