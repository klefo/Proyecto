/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package crm.benedicto.dao;
import crm.benedicto.beans.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author alumnos
 */
public class ProspectoDao {
    public BenedictoDBDAO BD;
    Statement st=null;
    ResultSet rs=null;
    
                public List  ConsultaProspecto(String sql){
                List listaProspectos = new ArrayList();
                String error="";

                try {

                    st = BD.conection.createStatement();
                    rs = st.executeQuery(sql);
                    
                    while (rs.next()) {
                        Prospecto pro = new Prospecto();
                        
                        pro.setNombre(rs.getString("NOMBRES"));
                        pro.setApellidopaterno(rs.getString("APELLIDOPATERNO"));
                        pro.setApellidopaterno(rs.getString("APELLIDOMATERNO"));
                        pro.setEmail(rs.getString("EMAIL"));
                        pro.setDni(rs.getString("DNI"));
                        pro.setTelefono(rs.getString("TELEFONO"));
                        pro.setCelular(rs.getString("CELULAR"));
                                                
                        listaProspectos.add(pro);

                    }

                } catch (Exception e) {

                    error = e.getMessage();

                }

                return (listaProspectos);
                
               

        }
}
