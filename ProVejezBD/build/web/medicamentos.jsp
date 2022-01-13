<%-- 
    Document   : medicamentos
    Created on : 27/08/2021, 1:57:10 a. m.
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.AdultoMayor"%>
<%@page import="listas.ListaSEMedicamento"%>
<%@page import="listas.ListaSEAdulto"%>
<%@page import="modelo.Medicamento"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="estilos/style_medicamento.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
        <title>Medicamentos</title>
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
        String listaMedi = "lasMedicinas"+String.valueOf(index);
        ListaSEMedicamento medicamento = (ListaSEMedicamento)sesion.getAttribute(listaMedi);
        
        
        String nombreMedi = request.getParameter("nombreMedi");
        String dosisMedi = request.getParameter("dosisMedi");
        String horaMedi = request.getParameter("horaMedi");
        String diaMedi = request.getParameter("diaMedi");
        
        if (nombreMedi != null){
            Medicamento medicina = new Medicamento(nombreMedi, dosisMedi, horaMedi, diaMedi);
            medicamento.agregar(medicina);
        }
        
    %>
    <body style="background: #76a7ab;">
        <ul class="nav justify-content-center bg-light">
            <li class="nav-item">
                <h2>Medicamentos de <%=adultos.obtener(index).nombre%> <%=adultos.obtener(index).apellidos%>
                    (<%=adultos.obtener(index).getIdentificacion()%>)</h2>
            </li>
        </ul>
        <div class="">
            <div class = "container">
                <table class="table mt-5 bg-light rounded" >
                    <thead>
                        <tr>
                            <th scope="col">Día</th>
                            <th scope="col">Hora</th>
                            <th scope="col">Nombre medicina</th>
                            <th scope="col">Dosis</th>                            
                            <th scope="col">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody id="scroll">
                        <%
                            if (medicamento.esVacia() == true){
                                for (int i = 0; i < medicamento.tamanio(); i++){
                                                                    
                        %>
                        <tr>
                            <th scope="row"><%=medicamento.obtener(i).getDiaMedicamento()%></th>
                            <td><%=medicamento.obtener(i).getHoraMedicamento()%></td>
                            <td><%=medicamento.obtener(i).getNombreMedicamento()%></td>
                            <td><%=medicamento.obtener(i).getDosisMedicamento()%></td>                            
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
                    <button class="black"><a href="formularioMedicamento.jsp" class="text-dark">AGREGAR MEDICAMENTO</a></button>
                </div>
            </div>
        </div>
    </body>
</html>