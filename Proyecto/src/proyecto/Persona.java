package proyecto;


public class Persona extends Cliente {

    private String Nombre;

    private String Ape_Paterno;

    private String Ape_Materno;

    private String Email;

    private String Tel_Casa;

    private String Tel_Celular;

    private String Fecha;

    public Persona () {
    
        System.out.println("persona");
        
        
    }

    public String getApe_Materno () {
        return Ape_Materno;
    }

    public void setApe_Materno (String val) {
        this.Ape_Materno = val;
    }

    public String getApe_Paterno () {
        return Ape_Paterno;
    }

    public void setApe_Paterno (String val) {
        this.Ape_Paterno = val;
    }

    public String getEmail () {
        return Email;
    }

    public void setEmail (String val) {
        this.Email = val;
    }

    public String getFecha () {
        return Fecha;
    }

    public void setFecha (String val) {
        this.Fecha = val;
    }

    public String getNombre () {
        return Nombre;
    }

    public void setNombre (String val) {
        this.Nombre = val;
    }

    public String getTel_Casa () {
        return Tel_Casa;
    }

    public void setTel_Casa (String val) {
        this.Tel_Casa = val;
    }

    public String getTel_Celular () {
        return Tel_Celular;
    }

    public void setTel_Celular (String val) {
        this.Tel_Celular = val;
    }

}

