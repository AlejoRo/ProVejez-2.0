<%-- 
    Document   : actividades
    Created on : 14/08/2021, 9:26:22 p. m.
    Author     : alejo
--%>

<%@page import="listas.ListaSEActividad"%>
<%@page import="modelo.Actividad"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="estilos/fondoboton.css">
        <title>Formulario actividad</title>
    </head>
    <body>
        <ul class="nav justify-content-center bg-light">
            <li class="nav-item">
                <h2>AGREGAR ACTIVIDAD</h2>
            </li>
        </ul>
        <div class = "container mt-4">
            <div class = "row justify-content-md-center">
                <div class = "col-lg-6">
                    <form action="actividades.jsp" method="post">
                        <div class="mb-3">
                            <label>Nombre de la actividad</label>
                            <input type="text" class="form-control" name="nombre" placeholder="nombre">
                        </div>
                        <div class="mb-3">
                            <label>Descripcion</label>
                            <textarea class="form-control" name ="descripcion" rows="4"></textarea>
                        </div>
                        <div class="mb-3">
                            <label>Hora</label>
                            <input type="time" class="form-control" name="hora"/>
                        </div>
                        <div class="mb-3">
                            <label>Día</label>
                            <select class="form-select" name = "dia">
                                <option selected>Seleccionar día de la actividad</option>
                                <option value="lunes">Lunes</option>
                                <option value="martes">Martes</option>
                                <option value="miercoles">Miércoles</option>
                                <option value="jueves">Jueves</option>
                                <option value="viernes">Viernes</option>
                                <option value="sabado">Sábado</option>
                                <option value="domingo">Domingo</option>
                            </select>
                        </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-between mt-5">
                            <div class="veen">
                                <a href="actividades.jsp" class="dark">Volver</a>
                            </div>
                            <div class="veen">
                                <button type="submit" class="dark">Agregar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>            
            <%
                //String nombre = request.getParameter("nombre");
                //String descripcion = request.getParameter("descripcion");
                //String hora = request.getParameter("hora");
                //String dia = request.getParameter("dia");
                
                //Actividad pastilla = new Actividad(nombre, descripcion, hora, dia);
                //ListaSEActividad listaAct = new ListaSEActividad();
                //listaAct.agregar(pastilla);
                //out.println(nombre);
                //out.println(hora);
                //out.println(dia);
                //out.println(listaAct);
            %>
        </div>
    </body>
</html>

