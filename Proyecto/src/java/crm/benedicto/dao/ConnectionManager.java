package crm.benedicto.dao;

import crm.benedicto.excepciones.PersistenException;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionManager {
    private String url = "jdbc:derby://localhost:1527/sample";
    private String dbdriver = "org.apache.derby.jdbc.ClientDriver";
    private String username = "app";
    private String password = "app";
    private Connection conexion=null;

    public ConnectionManager() throws PersistenException {        
        try {
            Class.forName(dbdriver);
            conexion = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            throw new PersistenException(e.getMessage());
        }        
    }        
    
    public Connection getConnection() {
        return conexion;
    }    
    
    public void close(){
        try {
            conexion.close();
        } catch (Exception e) {
        }
    }

}


