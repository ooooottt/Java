package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Kakeibo;

	public class KakeiboDao {

		public static ArrayList<Kakeibo> searchTable() {
			ArrayList<Kakeibo> list = new ArrayList<Kakeibo>();

			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;

			try {
				//①JDBCドライバをロードする
				Class.forName("com.mysql.jdbc.Driver");

				//②DBMSとの接続を確立する
				con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/kakeibo?useSSL=false",
						"root",
						"weeknd0216");

				//③SQL文を作成する
				String sql = "SELECT DAY,NAME,PRICE FROM KAKEIBO;";

				//④SQL文を実行するための準備をする
				ps = con.prepareStatement(sql);

				//⑤SQL文を実行してDBMSから結果を受信する
				rs = ps.executeQuery();

				//⑥実行結果を含んだインスタンスからデータを取り出す
				while(rs.next() == true) {
					int day = rs.getInt("day");
					String name = rs.getString("name");
					int price = rs.getInt("price");
					list.add(new Kakeibo(day,name,price));
				}

			}catch(ClassNotFoundException e) {
				System.out.println("JDBCドライバが見つかりません。");
			}catch(SQLException e) {
				System.out.println("DB接続時にエラーが発生しました。");
				e.printStackTrace();
			} finally {
				// ⑦DBMSから切断する
				try {
					if(rs != null) {
						rs.close();
					}
				}catch(SQLException e) {
					System.out.println("DB切断時にエラーが発生しました。");
					e.printStackTrace();
				}

				try {
					if(ps != null) {
						ps.close();
					}
				}catch(SQLException e) {
					System.out.println("DB切断時にエラーが発生しました。");
					e.printStackTrace();
				}

				try {
					if(con != null) {
						con.close();
					}
				}catch(SQLException e) {
					System.out.println("DB切断時にエラーが発生しました。");
					e.printStackTrace();
				}
			}

			return list;
		}

	public static Kakeibo DetailView(int key){

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Kakeibo result = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/kakeibo?useSSL=false",
					"root",
					"weeknd0216");

			String sql = "SELECT * FROM KAKEIBO WHERE DAY = ?;";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, key);

			rs = pstmt.executeQuery();
			rs.next();

			int day = rs.getInt("day");
			String name = rs.getString("name");
			int price = rs.getInt("price");

			result = new Kakeibo(day,name,price);

		} catch (ClassNotFoundException e) {
			System.out.println("JDBCドライバが見つかりません。");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DBアクセス時にエラーが発生しました。");
			e.printStackTrace();
		} finally {

			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				System.out.println("DBアクセス時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				System.out.println("DBアクセス時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				System.out.println("DBアクセス時にエラーが発生しました。");
				e.printStackTrace();
			}
		}
		return result;
	}


	public static void Record(Kakeibo k){

		Connection con = null;
		PreparedStatement pstmt = null;

		try{

			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/kakeibo?useSSL=false",
					"root",
					"weeknd0216");

			String sql = "INSERT INTO KAKEIBO VALUES(?,?,?);";

			pstmt = con.prepareStatement(sql);

			int day = k.getDay();
			int price = k.getPrice();


			pstmt.setInt(1, day);
			pstmt.setString(2,k.getName());
			pstmt.setInt(3,price);

			pstmt.executeUpdate();

		} catch (SQLException e){
			System.out.println("DBアクセスに失敗しました。");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("DBアクセスに失敗しました。");
			e.printStackTrace();
		}
			try{
				if(pstmt != null){
					pstmt.close();
				}
			} catch(SQLException e){
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if( pstmt != null){
					pstmt.close();
				}
			} catch(SQLException e){
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if( con != null){
					con.close();
				}
			} catch (SQLException e){
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
		}

	public static void Delete(int key){

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/kakeibo?useSSL=false",
					"root",
					"weeknd0216");

			String sql = "DELETE FROM KAKEIBO WHERE DAY = (?);";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, key);

			pstmt.executeUpdate();

		} catch (SQLException e){
			System.out.println("DBアクセスに失敗しました。");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally{
			try{
				if(pstmt != null){
					pstmt.close();
				}
			} catch(SQLException e){
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if( pstmt != null){
					pstmt.close();
				}
			} catch(SQLException e){
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if( con != null){
					con.close();
				}
			} catch (SQLException e){
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
		}
	}
}