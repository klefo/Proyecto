package crm.benedicto.dao;

import crm.benedicto.excepciones.BusinessException;
import crm.benedicto.beans.Cliente;
import crm.benedicto.beans.Cliente;
import crm.benedicto.beans.Prospecto;
import crm.benedicto.beans.Prospecto;
import java.util.ArrayList;

/**
 *
 * @author Hugo Cornejo
 */
public class AdmCliente {
    private ArrayList<Cliente> clientes;
    private ArrayList<Prospecto> prospectos;

    public AdmCliente() {
        clientes=new ArrayList<Cliente>();
        prospectos=new ArrayList<Prospecto>();
        
    }
    public void registrarCliente(String nombre,String apellidopat,String apellidomat,String email,String dni,String telefono,String celular,String fechacontacto) 
            throws BusinessException 
    {
        validarDatos(dni, nombre, apellidopat,email);
        validarDuplicidad(dni,"cliente");
        
        // Crear un nuevo producto
        Cliente nuevoCliente = new Cliente(nombre, apellidopat, apellidomat, email, dni, telefono, celular, fechacontacto);
        // Ponerlo como  parte de la coleccion
        clientes.add(nuevoCliente);
    }
    
    public void registrarProspecto(String nombre,String apellidopat,String apellidomat,String email,String dni,String telefono,String celular,String fechacontacto) 
            throws BusinessException 
    {
        validarDatos(dni, nombre, apellidopat,email);
        validarDuplicidad(dni,"prospecto");
        
        // Crear un nuevo producto
        Prospecto nuevoProspecto = new Prospecto(nombre, apellidopat, apellidomat, email, dni, telefono, celular, fechacontacto);
        // Ponerlo como  parte de la coleccion
        prospectos.add(nuevoProspecto);
    }
    
    
       
    
    public Cliente buscarCliente(String dni) {
        //bucle que corre desde una variable cliente hasta el arreglo cliente
        for(Cliente cliente : clientes)
            if (cliente.getDni().equals(dni))
                return cliente;
        return null;
    }
    
    public Prospecto buscarProspecto(String dni) {
        //bucle que corre desde una variable cliente hasta el arreglo cliente
        for(Prospecto prospecto : prospectos)
            if (prospecto.getDni().equals(dni))
                return prospecto;
        return null;
    }
    
        
     public void eliminarCliente(String dni) {
        Cliente cliente = buscarCliente(dni);
        if (cliente != null)
            clientes.remove(cliente);
    }
     
    public void eliminarProspecto(String dni) {
        Prospecto prospecto = buscarProspecto(dni);
        if (prospecto != null)
            prospectos.remove(prospecto);
    }
     
          
    private void validarDatos(String dni,String nombre, String apellidopat, String email)
            throws BusinessException 
    {
        validarMandatorios(dni, nombre, apellidopat, email);
       // validarDuplicidad(dni);
    }
    
        private void validarDuplicidad(String dni, String flag) 
            throws BusinessException 
        {
                        
            if(flag=="cliente"){
                if (buscarCliente(dni) != null){
                    String mensaje = "Error : " + dni + " ya existe";
                    // Crear la excepcion y lanzarla
                    throw new BusinessException(mensaje);
                }
            }else{
                if (buscarProspecto(dni) != null || buscarCliente(dni) != null){
                String mensaje = "Error : " + dni + " ya existe";
                // Crear la excepcion y lanzarla
                throw new BusinessException(mensaje);
                }

            }
        
        }
        
        private void validarMandatorios(String dni,String nombre, String apellidopat, String email)
            throws BusinessException 
        {
        String mensaje = "";
        if (dni == null || dni.isEmpty())
            mensaje += "DNI no puede ser vacio o nulo";
        if (nombre == null || nombre.isEmpty())
            mensaje += "\nNombre no puede ser vacio o nulo";
        if (apellidopat == null || apellidopat.isEmpty())
            mensaje += "\nApellido paterno no puede ser vacio o nulo";
        if (email == null || email.isEmpty())
            mensaje += "\nEmail no puede ser vacio o nulo";
        if (! mensaje.isEmpty())
            throw new BusinessException(mensaje);      
    }

}
