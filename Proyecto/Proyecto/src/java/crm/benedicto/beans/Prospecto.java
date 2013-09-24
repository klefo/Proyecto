package crm.benedicto.beans;

/**
 *
 * @author Hcornejo
 */
public class Prospecto extends Cliente {

    public Prospecto(String nombre, String apellidopaterno, String apellidomaterno, String email, String dni, String telefono, String celular, String fechacontacto) {
        super(nombre, apellidopaterno, apellidomaterno, email, dni, telefono, celular, fechacontacto);
    }
    
    public Prospecto(){}
    
}
