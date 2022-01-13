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
public class ListaSEActividad {
    private NodoActividad primerNodo;
    private NodoActividad ultimoNodo;
    private int n;

    public ListaSEActividad() {
        primerNodo = null;
        ultimoNodo = null;
        n = 0;
    }

    public void agregar(Actividad dato) {
        NodoActividad nuevoNodo = new NodoActividad(dato);
        if (primerNodo == null) {
            primerNodo = nuevoNodo;
        } else {
            ultimoNodo.siguiente = nuevoNodo;
        }
        ultimoNodo = nuevoNodo;
        n++;
    }
    
    public Actividad obtener (int indice){
        if (indice >= 0 && indice < n) {
            NodoActividad actual = primerNodo;
            while (indice > 0) {                
                actual = actual.siguiente;
                indice--;
            }
            return actual.dato;
        } 
        throw new IndexOutOfBoundsException("" + indice);
        
    }
    
    public boolean eliminar(int indice) {
        if (indice >= 0 && indice < n) {
            NodoActividad actual = primerNodo;
            NodoActividad anterior = null;

            while (indice > 0) {
                anterior = actual;
                actual = actual.siguiente;
                --indice;
            }

            if (anterior == null) {
                primerNodo = actual.siguiente;
            } else {
                anterior.siguiente = actual.siguiente;
            }

            if (actual == ultimoNodo) {
                ultimoNodo = anterior;
            }
            n--;
            return true;
        }
        return false;
    }
    
    public boolean esVacia(){
        return primerNodo != null;
    }
    
    public int tamanio(){
        return n;
    }
    
    public String toString(){
        String texto = "";
        if (primerNodo != null) {
            NodoActividad actual = primerNodo;
            while (actual.siguiente != null) {                
                texto += actual.dato + "\n" + "\n";
                actual = actual.siguiente;
            }
            texto += actual.dato;
        }
        return texto;
    }
    
}
