package modelo;

import modelo.Dia;

public class Medicamento {

    private String nombreMedicamento;
    private String dosisMedicamento;
    private String horaMedicamento;
    private String diaMedicamento;

    public Medicamento(String nombreMedicamento, String dosisMedicamento, String horaMedicamento, String diaMedicamento) {
        this.nombreMedicamento = nombreMedicamento;
        this.dosisMedicamento = dosisMedicamento;
        this.horaMedicamento = horaMedicamento;
        this.diaMedicamento = diaMedicamento;
    }

    public Medicamento() {
    }
    
    public String getFechaAgregado() {
        String actual = Hora.getHoraActual();
        String f_actual = Dia.getFechaActual();
        String cadena = "Se agregó " + nombreMedicamento + " el " + f_actual + " a las " + actual;
        return cadena;
    }
    
    public String getNombreMedicamento() {
        return nombreMedicamento;
    }

    public void setNombreMedicamento(String nombreMedicamento) {
        this.nombreMedicamento = nombreMedicamento;
    }

    public String getDosisMedicamento() {
        return dosisMedicamento;
    }

    public void setDosisMedicamento(String dosisMedicamento) {
        this.dosisMedicamento = dosisMedicamento;
    }

    public String getHoraMedicamento() {
        return horaMedicamento;
    }

    public void setHoraMedicamento(String horaMedicamento) {
        this.horaMedicamento = horaMedicamento;
    }

    public String getDiaMedicamento() {
        return diaMedicamento;
    }

    public void setDiaMedicamento(String diaMedicamento) {
        this.diaMedicamento = diaMedicamento;
    }

    @Override
    public String toString() {
        String cadena = "";
        cadena = "Nombre: " + nombreMedicamento + "\n"
                + "Dosis: " + dosisMedicamento + "\n"
                + "Hora: " + horaMedicamento + "\n"
                + "Día: " + diaMedicamento;
        return cadena;
    }
}
