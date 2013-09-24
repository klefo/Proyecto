
package crm.benedicto.beans;

import java.io.Serializable;

public class Permiso implements Serializable{
    private int idRol;
    private int idModulo;
    private int acceso;
    private int adicionar;
    private int editar;
    private int eliminar;

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public int getIdModulo() {
        return idModulo;
    }

    public void setIdModulo(int idModulo) {
        this.idModulo = idModulo;
    }

    public int getAcceso() {
        return acceso;
    }

    public void setAcceso(int acceso) {
        this.acceso = acceso;
    }

    public int getAdicionar() {
        return adicionar;
    }

    public void setAdicionar(int adicionar) {
        this.adicionar = adicionar;
    }

    public int getEditar() {
        return editar;
    }

    public void setEditar(int editar) {
        this.editar = editar;
    }

    public int getEliminar() {
        return eliminar;
    }

    public void setEliminar(int eliminar) {
        this.eliminar = eliminar;
    }

    
}
