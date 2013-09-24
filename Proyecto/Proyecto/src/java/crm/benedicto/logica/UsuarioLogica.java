
package crm.benedicto.logica;

import com.sun.jndi.ldap.Connection;
import crm.benedicto.beans.Usuario;
import crm.benedicto.dao.ConnectionManager;
import crm.benedicto.dao.UsuarioDAO;
import crm.benedicto.excepciones.LogicaException;
import crm.benedicto.excepciones.PersistenException;

public class UsuarioLogica {
    
    public Usuario validarUsuario(String nomUsuario, String contrasena) throws PersistenException,LogicaException{                    
        Usuario usuario = null;
        try{
            if(nomUsuario.equals("") || contrasena.equals("")){
                throw new LogicaException("mensaje general");
            }else{            
                ConnectionManager cm=new ConnectionManager();
                UsuarioDAO usuarioDAO = new UsuarioDAO(cm);
                usuario = usuarioDAO.validarUsuario(nomUsuario, contrasena);
                cm.close();
            }
        }catch(LogicaException e){
            throw e;
        }catch(PersistenException e){
            throw e;
        }
        return usuario;
    }
}
