
import java.sql.*;


public class JdbcInsertDemoo {

	public static void main(String[] args) throws SQLException {

		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		String dbUrl = "jdbc:mysql://localhost:3306/demo?useSSL=false";
		String user = "student";		
		String pass = "student";

		try {
			// 1. Get a connection to database
			myConn = DriverManager.getConnection(dbUrl, user, pass);
			
			// 2. Create a statement
			myStmt = myConn.createStatement();

			// 3. Insert a new employee
			System.out.println("Inserting a new employee to database\n");
			
			int rowsAffected = myStmt.executeUpdate(
				"insert into employees " +
				"(last_name, first_name, phone_number) " + 
				"values " + 
				"('Wright', 'Eric', '01282543636')");
			
			// 4. Verify this by getting a list of employees
			myRs = myStmt.executeQuery("select * from employees order by last_name");
			
			// 5. Process the result set
			while (myRs.next()) {
				System.out.println(myRs.getString("last_name") + ", " + myRs.getString("first_name"));
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
		finally {
			if (myRs != null) {
				myRs.close();
			}
			
			if (myStmt != null) {
				myStmt.close();
			}
			
			if (myConn != null) {
				myConn.close();
			}
		}
	}

}