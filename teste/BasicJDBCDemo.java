package teste_db;

import java.lang.reflect.InvocationTargetException;

// https://alvinalexander.com/source-code/simple-java-jdbc-example-sql-select-insert-update-delete/

import java.sql.*;

public class BasicJDBCDemo
{
  Connection conn;

  public static void main(String[] args)
  {
    new BasicJDBCDemo();
  }
 
  public BasicJDBCDemo()
  {
    try
    {
      // Class.forName("com.mysql.jdbc.Driver").newInstance();
      // Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();
      Class.forName("com.mysql.jdbc.Driver").getConstructor().newInstance();
      String url = "jdbc:mysql://localhost/coffeebreak";
      conn = DriverManager.getConnection(url, "username", "password");
      doTests();
      conn.close();
    }
    catch (NoSuchMethodException ex) {System.err.println(ex.getMessage());}
    catch (SecurityException ex) {System.err.println(ex.getMessage());}
    catch (InvocationTargetException ex) {System.err.println(ex.getMessage());}
    
    // catch (IllegalArgumentException ex) {System.err.println(ex.getMessage());}
    
    catch (ClassNotFoundException ex) {System.err.println(ex.getMessage());}
    catch (IllegalAccessException ex) {System.err.println(ex.getMessage());}
    catch (InstantiationException ex) {System.err.println(ex.getMessage());}
    catch (SQLException ex)           {System.err.println(ex.getMessage());}
  }

  private void doTests()
  {
    doSelectTest();

    doInsertTest();  doSelectTest();
    doUpdateTest();  doSelectTest();
    doDeleteTest();  doSelectTest();
  }

  private void doSelectTest()
  {
    System.out.println("[OUTPUT FROM SELECT]");
    String query = "SELECT COF_NAME, PRICE FROM COFFEES";
    try
    {
      Statement st = conn.createStatement();
      ResultSet rs = st.executeQuery(query);
      while (rs.next())
      {
        String s = rs.getString("COF_NAME");
        float n = rs.getFloat("PRICE");
        System.out.println(s + "   " + n);
      }
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }

  private void doInsertTest()
  {
    System.out.print("\n[Performing INSERT] ... ");
    try
    {
      Statement st = conn.createStatement();
      st.executeUpdate("INSERT INTO COFFEES " +
                       "VALUES ('BREAKFAST BLEND', 200, 7.99, 0, 0)");
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }

  private void doUpdateTest()
  {
    System.out.print("\n[Performing UPDATE] ... ");
    try
    {
      Statement st = conn.createStatement();
      st.executeUpdate("UPDATE COFFEES SET PRICE=4.99 WHERE COF_NAME='BREAKFAST BLEND'");
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }

  private void doDeleteTest()
  {
    System.out.print("\n[Performing DELETE] ... ");
    try
    {
      Statement st = conn.createStatement();
      st.executeUpdate("DELETE FROM COFFEES WHERE COF_NAME='BREAKFAST BLEND'");
    }
    catch (SQLException ex)
    {
      System.err.println(ex.getMessage());
    }
  }
}

/*
public void updateCoffeeSales(HashMap<String, Integer> salesForWeek) throws SQLException {
    String updateString =
      "update COFFEES set SALES = ? where COF_NAME = ?";
    String updateStatement =
      "update COFFEES set TOTAL = TOTAL + ? where COF_NAME = ?";

    try (PreparedStatement updateSales = con.prepareStatement(updateString);
         PreparedStatement updateTotal = con.prepareStatement(updateStatement))
    
    {
      con.setAutoCommit(false);
      for (Map.Entry<String, Integer> e : salesForWeek.entrySet()) {
        updateSales.setInt(1, e.getValue().intValue());
        updateSales.setString(2, e.getKey());
        updateSales.executeUpdate();

        updateTotal.setInt(1, e.getValue().intValue());
        updateTotal.setString(2, e.getKey());
        updateTotal.executeUpdate();
        con.commit();
      }
    } catch (SQLException e) {
      JDBCTutorialUtilities.printSQLException(e);
      if (con != null) {
        try {
          System.err.print("Transaction is being rolled back");
          con.rollback();
        } catch (SQLException excep) {
          JDBCTutorialUtilities.printSQLException(excep);
        }
      }
    }
  }
*/

// https://alvinalexander.com/java/java-mysql-select-query-example/

/**
 * A Java MySQL INSERT example.
 * Demonstrates the use of a SQL INSERT statement against a
 * MySQL database, called from a Java program, using a
 * Java Statement (not a PreparedStatement).
 * 
 * Created by Alvin Alexander, http://devdaily.com
 */

/*
import java.sql.*;

public class HelloWorld
{

  public static void main(String[] args)
  {
    try
    {
      // create a mysql database connection
      String myDriver = "org.gjt.mm.mysql.Driver";
      String myUrl = "jdbc:mysql://localhost/test";
      Class.forName(myDriver);
      Connection conn = DriverManager.getConnection(myUrl, "root", "");
      
      Statement st = conn.createStatement();

      // note that i'm leaving "date_created" out of this insert statement
      st.executeUpdate("INSERT INTO users (first_name, last_name, is_admin, num_points) "
          +"VALUES ('Fred', 'Flinstone', false, 10000)");

      conn.close();
    }
    catch (Exception e)
    {
      System.err.println("Got an exception!");
      System.err.println(e.getMessage());
    }

  }
}
*/


/*
public class HelloWorld {
    public static void main(String[] args) {
          System.out.println("Hello World");
    }
}
*/