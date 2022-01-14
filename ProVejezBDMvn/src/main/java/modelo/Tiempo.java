package modelo;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Tiempo {

    public int hora;
    public int minuto;


    public void establecerHora(int hora, int minuto) {
        this.hora = hora;
        this.minuto = minuto;
    }

    public String mostrarHora() {

        Calendar calendario = new GregorianCalendar();
        int hora, minutos, segundos;
        hora = calendario.get(Calendar.HOUR_OF_DAY);
        minutos = calendario.get(Calendar.MINUTE);

        return hora + ":" + minutos;
    }

    public int mostrarDia() {

        java.util.Date fecha = new Date();
        return fecha.getDay();

    }

}
