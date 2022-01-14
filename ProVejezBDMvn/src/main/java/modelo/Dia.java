package modelo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Dia {

    public Dia(String Date) {
    }

    public static String getFechaActual() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY");
        Date fechaActual = new Date();
        String f_actual = "" + (sdf.format(fechaActual));
        return f_actual;
    }

}
