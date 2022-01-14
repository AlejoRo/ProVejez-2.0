/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import listas.ListaSEAdulto;
import listas.ListaSEMedicamento;

/**
 *
 * @author alejo
 */
public class Funcionalidad {

    
    public ListaSEAdulto adultos = new ListaSEAdulto();

    public Funcionalidad() {
    }

    public void agregarALista(AdultoMayor adulto) {
        adultos.agregar(adulto);
    }

    public void agregarMedicamentos(ListaSEMedicamento medicina) {
        if (adultos != null) {
            adultos.obtener(0).setMedicamentos(medicina);
        }

    }

}
