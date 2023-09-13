import java.sql.*;
import java.util.*;

public class JDBCConnectionTest {

    public static void main(String[] args) throws SQLException {
        String url = "jdbc:oracle:thin:@54.152.219.47:1521:XE";
        String username = "hr";
        String passowrd = "hr";

        Connection connection = DriverManager.getConnection(url, username, passowrd);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select * from employees");

        rs.next();

        int id1 = rs.getInt("EMPLOYEE_ID");
        System.out.println("id1 = " + id1);

        String name1 = rs.getString(2);
        System.out.println("name1 = " + name1);

        rs.next();
        rs.previous();
        rs.absolute(10);
        String name10 = rs.getString(2);
        System.out.println("name10 = " + name10);


        ResultSetMetaData rsmd = rs.getMetaData();
        System.out.println("rsmd.getColumnCount() = " + rsmd.getColumnCount());
        System.out.println("rsmd.getColumnName(2) = " + rsmd.getColumnName(2));


        DatabaseMetaData dbmd = connection.getMetaData();
        System.out.println(dbmd.getDatabaseProductName());
        System.out.println("dbmd.getDriverName() = " + dbmd.getDriverName());


    }
}
