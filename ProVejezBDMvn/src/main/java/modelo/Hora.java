package modelo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Hora {
 
    public Hora(String reloj) {
    }

    public static String getHoraActual() {
        SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
        Date horaActual = new Date();
        String actual = "" + (sdf.format(horaActual));
        return actual;
        
    }

}
