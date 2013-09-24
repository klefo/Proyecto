package proyecto;


public class Compra {

    private String Concepto;

    private int Numero;

    private String Fec_Emision;

    public Compra () {
    }

    public String getConcepto () {
        return Concepto;
    }

    public void setConcepto (String val) {
        this.Concepto = val;
    }

    public String getFec_Emision () {
        return Fec_Emision;
    }

    public void setFec_Emision (String val) {
        this.Fec_Emision = val;
    }

    public int getNumero () {
        return Numero;
    }

    public void setNumero (int val) {
        this.Numero = val;
    }

}

