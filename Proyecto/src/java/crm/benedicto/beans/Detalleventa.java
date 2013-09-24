package crm.benedicto.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;


public class Detalleventa {
//    private ArrayList ventas; 
    public Connection con = null;
    // Database configuration
    public static String url = "jdbc:derby://localhost:1527/sample";
    public static String dbdriver = "org.apache.derby.jdbc.ClientDriver";
    public static String user = "app";
    public static String password = "app";        
 
    
    public Detalleventa() throws Exception {
        try {
            /*
            Context initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            DataSource ds = (DataSource) envCtx.lookup("jdbc/BookDB");
            con = ds.getConnection();
             */
            Class.forName(dbdriver);
            con = DriverManager.getConnection(url, user, password);
        } catch (Exception ex) {
            throw new Exception("No se puede establecer connección a la base de datos: " +
                    ex.getMessage());
        }
    }
    
public ResultSet ListarVentas()throws Exception{
        ResultSet rs=null;
        String sql="select * from APP.VENTAS;";
        con=GetConnection();
        PreparedStatement ps=null;        
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        rs.next();
        return rs;        
    }    
//    public Collection getBooks() throws BooksNotFoundException {
//        ventas = new ArrayList();
//        
//        try {
//            String selectStatement = "select * " + "from books";
//            PreparedStatement prepStmt = con.prepareStatement(selectStatement);
//            ResultSet rs = prepStmt.executeQuery();
//            
//            while (rs.next()) {
//                BookDetails bd =
//                        new BookDetails(rs.getString(1), rs.getString(2),
//                        rs.getString(3), rs.getString(4), rs.getFloat(5),
//                        rs.getBoolean(6), rs.getInt(7), rs.getString(8),
//                        rs.getInt(9));
//                
//                if (rs.getInt(9) > 0) {
//                    ventas.add(bd);
//                }
//            }
//            
//            prepStmt.close();
//        } catch (SQLException ex) {
//            throw new BooksNotFoundException(ex.getMessage());
//        }
//        
//        Collections.sort(ventas);
//        
//        return ventas;
//    }

    private Connection GetConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
} 
            
    

