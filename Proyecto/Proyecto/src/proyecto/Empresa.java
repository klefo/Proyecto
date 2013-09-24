package proyecto;


public class Empresa extends Cliente {

    private String RazonSocial;

    private int RUC;

    public Empresa () {
    }

    public int getRUC () {
        return RUC;
    }

    public void setRUC (int val) {
        this.RUC = val;
    }

    public String getRazonSocial () {
        return RazonSocial;
    }

    public void setRazonSocial (String val) {
        this.RazonSocial = val;
    }

}

