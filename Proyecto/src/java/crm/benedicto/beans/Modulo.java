
package crm.benedicto.beans;

import java.io.Serializable;

public class Modulo implements Serializable{     
    private int id;
    private String nombre;
    private String pagina;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPagina() {
        return pagina;
    }

    public void setPagina(String pagina) {
        this.pagina = pagina;
    }
 
}
