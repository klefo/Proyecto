/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.dao;
import crm.benedicto.beans.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alumnos
 */
public class BenedictoDBDAO {
    public Connection conection;
    Statement st=null;
    ResultSet rs=null;
    // Database configuration
    private String url = "jdbc:derby://localhost:1527/DBProyecto";
    private String dbdriver = "org.apache.derby.jdbc.ClientDriver";
    private String username = "app";
    private String password = "app";
    
        public BenedictoDBDAO() throws Exception {
        try {

            Class.forName(dbdriver);
            conection = DriverManager.getConnection(url, username, password);
        } catch (Exception ex) {
            throw new Exception("No se puede establecer la conexion con la BD: " +
                    ex.getMessage());
        }
    }
        
        

            
            public Boolean Close(){

                String error="";

                try {

                    conection.close();

                } catch (Exception e) {

                    error = e.getMessage();
                    return false;

                }

                return true;

        }
}
