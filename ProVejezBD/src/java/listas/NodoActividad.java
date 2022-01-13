/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package listas;

import modelo.Actividad;
/**
 *
 * @author alejo
 */
public class NodoActividad {
    Actividad dato;
    NodoActividad siguiente;
    
    public NodoActividad(Actividad dato) {
        this.dato = dato;
        this.siguiente = null;
    }

    public NodoActividad(Actividad dato, NodoActividad siguiente) {
        this.dato = dato;
        this.siguiente = siguiente;
    }
}
