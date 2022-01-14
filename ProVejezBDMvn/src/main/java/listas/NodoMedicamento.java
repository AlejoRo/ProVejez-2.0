/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package listas;

import modelo.Medicamento;
/**
 *
 * @author alejo
 */
public class NodoMedicamento {
    
    Medicamento dato;
    NodoMedicamento siguiente;
    
    public NodoMedicamento(Medicamento dato) {
        this.dato = dato;
        this.siguiente = null;
    }

    public NodoMedicamento(Medicamento dato, NodoMedicamento siguiente) {
        this.dato = dato;
        this.siguiente = siguiente;
    }
}
