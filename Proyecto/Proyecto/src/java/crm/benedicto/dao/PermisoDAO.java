package crm.benedicto.dao;

import crm.benedicto.beans.Permiso;
import crm.benedicto.excepciones.PersistenException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PermisoDAO {
    private Connection conexion;
    private final String SQL_SELECT = "select idModulo,acceso,adicionar,editar,eliminar from permisos where idRol = ?";  
    private final String SQL_INSERT = "insert into permisos values(?,?,?,?,?,?)";
    private final String SQL_UPDATE = "";
    private final String SQL_DELETE = "";
    
    public PermisoDAO(ConnectionManager cm){
        this.conexion = cm.getConnection();
    }
    
    public List<Permiso> getListPermisos(int idRol) throws PersistenException {
        List<Permiso> lista = null;
        PreparedStatement comando = null;
        try{            
            comando = conexion.prepareStatement(SQL_SELECT);           
            comando.setInt(1, idRol);                        
            ResultSet resultado = comando.executeQuery();
            lista= new ArrayList<Permiso>();
            while(resultado.next()){
                Permiso objPermiso = new Permiso();
                objPermiso.setIdRol(idRol);
                objPermiso.setIdModulo(resultado.getInt("IDMODULO"));
                objPermiso.setAcceso(resultado.getInt("ACCESO"));
                objPermiso.setAdicionar(resultado.getInt("ADICIONAR"));
                objPermiso.setEditar(resultado.getInt("EDITAR"));
                objPermiso.setEliminar(resultado.getInt("ELIMINAR"));
                lista.add(objPermiso);                
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
        return lista;
    }
}
