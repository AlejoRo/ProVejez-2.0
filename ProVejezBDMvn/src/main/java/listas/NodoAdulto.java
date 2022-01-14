/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package listas;

import modelo.AdultoMayor;

/**
 *
 * @author alejo
 */
public class NodoAdulto {

    AdultoMayor dato;
    NodoAdulto siguiente;
    
    public NodoAdulto(AdultoMayor dato) {
        this.dato = dato;
        this.siguiente = null;
    }

    public NodoAdulto(AdultoMayor dato, NodoAdulto siguiente) {
        this.dato = dato;
        this.siguiente = siguiente;
    }
}
