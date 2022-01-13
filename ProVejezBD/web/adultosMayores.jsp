<%-- 
    Document   : almacenamiento
    Created on : 18/08/2021, 12:04:37 a. m.
    Author     : alejo
--%>

<%@page import="listas.ListaSEAdulto"%>
<%@page import="modelo.AdultoMayor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">
        <link rel="stylesheet" href="estilos/fondoboton.css">
        <style>
            #scroll{
                height:550px;
                width:550px;
                overflow-y:scroll;
                overflow-x:hidden;
            }
        </style>

        <title>Adulto mayores</title>
    </head>
    <body>
        <script>

        </script>

        <%
            HttpSession sesion = request.getSession();
            ListaSEAdulto adultos = (ListaSEAdulto)sesion.getAttribute("misAdultos");
  
            String identificacion = request.getParameter("identificacion");
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String numero_habitacion = request.getParameter("numero_habitacion");
            String encargado = request.getParameter("encargado");
            String ficha_medica = request.getParameter("ficha_medica");

            if(nombre != null){
                AdultoMayor adulto = new AdultoMayor(identificacion, nombre, apellidos, numero_habitacion,
                    encargado, ficha_medica, null, null);
                //sesion.setAttribute("adultino", adulto);
                adultos.agregar(adulto);
                
            }            
            //out.println(adulto);
        %>
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-4">
                    <figure class="figure mt-4">
                        <img src="images/LogoCompleto.png" class="figure-img img-fluid rounded" 
                             alt="Logo Provejez" width="375">
                    </figure>
                    <div class="d-grid gap-1  mt-3">
                        <a class="dark" type="button" href="formularioAdultoMayor.jsp">                                
                            Agregar adulto mayor
                        </a>
                        <a class="dark" type="button" href="agenda.jsp">                                
                            Ver agenda 
                        </a>
                    </div>
                </div>
                <div class="col-6">
                    <h5 class="text-light bg-dark mt-5 mb-3">Lista de los adultos mayores registrados</h5>
                    <form action="perfil.jsp" method="post">
                        <select class="form-select mt-1" size="20" name = "adultoElegido">

                            <%
                            if(adultos.esVacia() == true){                                
                               for(int i = 0; i < adultos.tamanio(); i++) {                        
                            %>
                            <option value="<%=i%>">Habitación: <%=adultos.obtener(i).getNumero_habitacion()%> &nbsp;&nbsp;&nbsp;&nbsp;
                                <%=adultos.obtener(i).nombre%> <%=adultos.obtener(i).apellidos%> (<%=adultos.obtener(i).getIdentificacion()%>)</option>
                                <%   
                                        }
                                    } else {
                                        out.println("No hay adultos");
                                }
                                %>
                        </select>
                        <h6 class="text-danger bg-light">*seleccionar un adulto mayor*</h6>
                        <button type="submit" class="btn btn-dark mt-2">Ver perfil del adulto seleccionado</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/query.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>


    </body>
</html>
