package modelo;

public class AbstractPersona {

    public String identificacion;
    public String nombre;
    public String apellidos;

    public AbstractPersona(String identificacion, String nombre, String apellidos) {
        this.identificacion = identificacion;
        this.nombre = nombre;
        this.apellidos = apellidos;

    }

    public String getIdentificacionTexto() {
        return "Se agregó exitosamente " + identificacion;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public String getNombreTexto() {
        return "Se agregó exitosamente " + nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidosTexto() {
        return "Se agregó exitosamente " + apellidos;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
}

