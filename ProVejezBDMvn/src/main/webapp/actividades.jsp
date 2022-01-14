<%-- 
    Document   : actividades
    Created on : 27/08/2021, 1:58:26 a. m.
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.AdultoMayor"%>
<%@page import="listas.ListaSEActividad"%>
<%@page import="listas.ListaSEAdulto"%>
<%@page import="modelo.Actividad"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="estilos/style_actividades.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
        <title>Actividades</title>
        <style>
            #scroll{
                height:400px;
                width:1050px;
                overflow-y:scroll;
                overflow-x:hidden;
            }
        </style>
    </head>
    <%
        HttpSession sesion = request.getSession();
        ListaSEAdulto adultos = (ListaSEAdulto)sesion.getAttribute("misAdultos");
        Integer indice = (Integer)sesion.getAttribute("indice");
        int index = indice.intValue();
        String listaActi = "lasActividades"+String.valueOf(index);
        ListaSEActividad actividad = (ListaSEActividad)sesion.getAttribute(listaActi);
        
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String hora = request.getParameter("hora");
        String dia = request.getParameter("dia");
        
        if (nombre != null){
            Actividad activity = new Actividad(nombre, descripcion, hora, dia);
            actividad.agregar(activity);
        }
                
    %>
    <body style="background: #76a7ab;">
        <ul class="nav justify-content-center bg-light">
            <li class="nav-item">
                <h2>Actividades de <%=adultos.obtener(index).nombre%> <%=adultos.obtener(index).apellidos%> 
                    (<%=adultos.obtener(index).getIdentificacion()%>)</h2>
            </li>
        </ul>
        <div class="">
            <div class = "container">
                <table class="table mt-5 bg-light rounded" id="scroll">
                    <thead>
                        <tr>
                            <th scope="col">Día</th>
                            <th scope="col">Hora</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Descripción</th>                            
                            <th scope="col">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if (actividad.esVacia() == true){
                                for (int i = 0; i < actividad.tamanio(); i++){
                                                                    
                        %>
                        <tr>

                            <th scope="row"><%=actividad.obtener(i).getDia_actividad()%></th>
                            <td><%=actividad.obtener(i).getHora_actividad()%></td>
                            <td><%=actividad.obtener(i).getNombre_actividad()%></td>
                            <td><%=actividad.obtener(i).getDescripcion_actividad()%></td>
                            <td><button class="btn"><i class="icon-trash"></i></button></td>

                        </tr>
                        <%
                                   }
                                   }
                        %>
                    </tbody>
                </table>
            </div>
            <div class="veen">
                <div class="submit">
                    <button class="dark"><a href="adultosMayores.jsp" class="dark text-dark">VOLVER</a></button>
                </div>

                <div class="submit">
                    <button class="black"><a href="formularioActividad.jsp" class="text-dark">AGREGAR ACTIVIDAD</a></button>
                </div>
            </div>
        </div>
    </body>
</html>
