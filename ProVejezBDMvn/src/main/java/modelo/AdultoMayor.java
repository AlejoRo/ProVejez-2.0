package modelo;

import listas.ListaSEActividad;
import listas.ListaSEMedicamento;

public class AdultoMayor extends AbstractPersona {

    private String numero_habitacion;
    private String encargado;
    private String ficha_medica;
    private ListaSEActividad actividades;
    private ListaSEMedicamento medicamentos;

    public AdultoMayor(String identificacion, String nombre, String apellidos,
            String numero_habitacion, String encargado, String ficha_medica,
            ListaSEActividad actividades, ListaSEMedicamento medicamentos) {
        super(identificacion, nombre, apellidos);
        this.numero_habitacion = numero_habitacion;
        this.ficha_medica = ficha_medica;
        this.encargado = encargado;
        this.actividades = actividades;
        this.medicamentos = medicamentos;
    }

    public ListaSEActividad getActividades() {
        return actividades;
    }

    public ListaSEMedicamento getMedicamentos() {
        return medicamentos;
    }

    public ListaSEMedicamento medicamentosDia(String dia) {
        ListaSEMedicamento medicamentosDelDia = new ListaSEMedicamento();

        for (int i = 0; i < medicamentos.tamanio(); i++) {
            if (medicamentos.obtener(i).getDiaMedicamento().equals(dia)) {
                medicamentosDelDia.agregar(medicamentos.obtener(i));
            }
        }
        return medicamentosDelDia;

    }
    
    public ListaSEActividad actividadesDia(String dia) {
        ListaSEActividad actividadesDelDia = new ListaSEActividad();

        for (int i = 0; i < actividades.tamanio(); i++) {
            if (actividades.obtener(i).getDia_actividad().equals(dia)) {
                actividadesDelDia.agregar(actividades.obtener(i));
            }
        }
        return actividadesDelDia;

    }

    public boolean medicamentosVacio() {
        return medicamentos == null;
    }

    public boolean actividadesVacio() {
        return actividades == null;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public String getNumero_habitacion() {
        return numero_habitacion;
    }

    public void setActividades(ListaSEActividad actividades) {
        this.actividades = actividades;
    }

    public void setMedicamentos(ListaSEMedicamento medicamentos) {
        this.medicamentos = medicamentos;
    }

    public void setNumero_habitacion(String numero_habitacion) {
        this.numero_habitacion = numero_habitacion;
    }

    public String getFicha_medica() {
        return ficha_medica;
    }

    public void setFicha_medica(String ficha_medica) {
        this.ficha_medica = ficha_medica;
    }

    public String getEncargado() {
        return encargado;
    }

    @Override
    public String toString() {
        String cadena = "";
        cadena = "Identificación: " + identificacion + "\n"
                + "Nombre: " + nombre + "\n"
                + "Apellidos: " + apellidos + "\n"
                + "Nro habitación: " + numero_habitacion + "\n"
                + "Encargado: " + encargado + "\n"
                + "Ficha técnica: " + ficha_medica + "\n" + "\n"
                + "Actividades:" + "\n" + actividades + "\n" + "\n"
                + "Medicamentos:" + "\n" + medicamentos;

        return cadena;
    }
}
