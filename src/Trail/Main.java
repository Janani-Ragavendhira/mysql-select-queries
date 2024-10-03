package Trail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Main {
	
	final String dbUrl = "jdbc:mysql://localhost:3306/test";
	final String username = "root";
	final String password = "";
	final Employee[] employees = new Employee[5];
	
	public void lineUpEmployees() {
		employees[0] = new Employee(101, "Jenny", 25, 10000);
		employees[1] = new Employee(102, "Jacky", 30, 20000);
		employees[2] = new Employee(103, "Joe", 20, 40000);
		employees[3] = new Employee(104, "John", 40, 80000);
		employees[4] = new Employee(105, "Shameer", 25, 90000);
	}
	
	public void insertRecords() {
		try {
			Connection connection = DriverManager.getConnection(dbUrl, username, password);
			
			String sql = "insert into employee (empcode, empname, empage, esalary) values (?, ?, ?, ?)";
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			int length = employees.length;
			
			for(int i = 0; i < length; i++) {
				stmt.setInt(1, employees[i].empcode);
				stmt.setString(2, employees[i].empname);
				stmt.setInt(3, employees[i].empage);
				stmt.setFloat(4, employees[i].esalary);
				
				int rows = stmt.executeUpdate();
				
				if( rows > 0 ) {
					System.out.println("Employee " + employees[i].empname + " has been inserted");
				}
				else {
					System.out.println("Unable to insert Employee " + employees[i].empname);
				}
			}

			stmt.close();
			connection.close();
		} 
		catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL Exception: " + e.getMessage());
		} 
		catch(Exception e) {
			System.out.println("Other Exception: " + e.getMessage());
		}
		
		System.out.println("All employees look inserted");
	}
	

	public static void main(String[] args) {
		
		Main mainObj = new Main();
		mainObj.lineUpEmployees();
		mainObj.insertRecords();
		
	}

}
