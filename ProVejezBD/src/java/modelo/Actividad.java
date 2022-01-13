/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author alejo
 */
public class Actividad {

    private String nombre_actividad;
    private String descripcion_actividad;
    private String hora_actividad;
    private String dia_actividad;

    public Actividad(String nombre_actividad, String descripcion_actividad, String hora_actividad, String dia_actividad) {
        this.nombre_actividad = nombre_actividad;
        this.descripcion_actividad = descripcion_actividad;
        this.hora_actividad = hora_actividad;
        this.dia_actividad = dia_actividad;
    }

    public Actividad() {
    }
    
    public void setNombre_actividad(String nombre_actividad) {
        this.nombre_actividad = nombre_actividad;
    }

    public void setDescripcion_actividad(String descripcion_actividad) {
        this.descripcion_actividad = descripcion_actividad;
    }

    public void setHora_actividad(String hora_actividad) {
        this.hora_actividad = hora_actividad;
    }

    public void setDia_actividad(String dia_actividad) {
        this.dia_actividad = dia_actividad;
    }

    public String getNombre_actividad() {
        return nombre_actividad;
    }

    public String getDescripcion_actividad() {
        return descripcion_actividad;
    }

    public String getHora_actividad() {
        return hora_actividad;
    }

    public String getDia_actividad() {
        return dia_actividad;
    }

    @Override
    public String toString() {
        String cadena = "";
        cadena = "Nombre: " + nombre_actividad + "\n"
                + "Descripción: " + descripcion_actividad + "\n"
                + "Hora: " + hora_actividad + "\n"
                + "Día: " + dia_actividad;
        return cadena;
    }
}
