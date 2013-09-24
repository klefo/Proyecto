
package crm.benedicto.dao;

import crm.benedicto.beans.*;
import crm.benedicto.excepciones.PersistenException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class UsuarioDAO {
    private Connection conexion;
    private final String SQL_SELECT = "select * from usuario where nomusuario = ? and contrasena = ?";      
    
    public UsuarioDAO(ConnectionManager cm){
        this.conexion = cm.getConnection();
    }
    
    public Usuario validarUsuario(String nomUsuario, String contrasena) throws PersistenException {
        PreparedStatement comando = null;
        Usuario objUsuario = null;
        
        try{            
            comando = conexion.prepareStatement(SQL_SELECT);           
            comando.setString(1, nomUsuario);
            comando.setString(2, contrasena);
            ResultSet resultado = comando.executeQuery();
            
            if(resultado.next()){
                objUsuario = new Usuario();
                objUsuario.setId(resultado.getInt("IDUSUARIO"));
                objUsuario.setDni(resultado.getString("DNI"));
                objUsuario.setNombre(resultado.getString("NOMBRES"));
                objUsuario.setApePaterno(resultado.getString("APEPATERNO"));
                objUsuario.setEmail(resultado.getString("EMAIL"));
                objUsuario.setFecIngreso(resultado.getDate("FECINGRESO"));
                objUsuario.setCargo(resultado.getString("CARGO"));
                objUsuario.setNomUsuario(resultado.getString("NOMUSUARIO"));
                objUsuario.setContraseña(resultado.getString("CONTRASENA"));
                objUsuario.setIdRol(resultado.getInt("IDROL"));
            }            
            resultado.close();
        }catch(Exception e){            
            throw new PersistenException(e.getMessage());
        }finally{
            try{
                comando.close();
            }catch(Exception e){                
            }
        }                                
        return objUsuario;
    }    
    
}
