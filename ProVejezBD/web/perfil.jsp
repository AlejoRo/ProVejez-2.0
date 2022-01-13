<%-- 
    Document   : perfil
    Created on : 27/08/2021, 1:55:21 a. m.
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@page import="listas.ListaSEAdulto"%>
<%@page import="modelo.AdultoMayor"%>
<%@page import="listas.ListaSEMedicamento"%>
<%@page import="listas.ListaSEActividad"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfil</title>
        <link rel="stylesheet" type="text/css" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <link rel="stylesheet" href="estilos/style_perfil.css">
    </head>

    <body>
        <%
            HttpSession sesion = request.getSession();
            ListaSEAdulto adultos = (ListaSEAdulto)sesion.getAttribute("misAdultos");

            int index = Integer.parseInt(request.getParameter("adultoElegido"));
             Integer indice = new Integer(index);
             sesion.setAttribute("indice", indice);
            
            if (adultos.obtener(index).medicamentosVacio() == true){
                ListaSEMedicamento medicamentos = new ListaSEMedicamento();
                adultos.obtener(index).setMedicamentos(medicamentos);
                String listaMedi = "lasMedicinas" + String.valueOf(index);
                sesion.setAttribute(listaMedi, medicamentos);
            }
            
            if (adultos.obtener(index).actividadesVacio() == true){
                ListaSEActividad actividades = new ListaSEActividad();
                adultos.obtener(index).setActividades(actividades);
                String listaActi = "lasActividades" + String.valueOf(index);
                sesion.setAttribute(listaActi, actividades);
            }
        %>

        <section class="seccion-perfil-usuario">
            <div class="perfil-usuario-header">
                <div class="perfil-usuario-portada">
                    <div class="logo"><img src="images/LetraLogo.png" alt="img-avatar"></div>
                    <div class="perfil-usuario-avatar">
                        <img src="images/logoprovejez.png" alt="img-avatar" height="190">
                    </div>
                </div>
            </div>
            <div class="perfil-usuario-body">
                <div class="perfil-usuario-bio">
                    <h3 class="titulo"><%=adultos.obtener(index).nombre%> <%=adultos.obtener(index).apellidos%></h3>
                    <div class="veen2">
                        <div class="submit">
                            <button class="dark"><a href="#" style="text-decoration: none" class="dark text-dark">Modificar datos</a></button>
                        </div>
                    </div>
                    <div class="veen3">
                        <div class="submit">
                            <button class="dark"><a href="#" style="text-decoration: none" class="dark text-dark">Eliminar adulto mayor</a></button>
                        </div>
                    </div>
                </div>
                <div class="perfil-usuario-footer">
                    <ul class="lista-datos">
                        <li><i class="icono fas fa-user-check"></i> Nombres: <%=adultos.obtener(index).nombre%></li>
                        <li><i class="icono fas fa-user-check"></i> Apellidos: <%=adultos.obtener(index).apellidos%></li>   
                        <li><i class="icono fas fa-address-card"></i> Identificación: <%=adultos.obtener(index).getIdentificacion()%></li>
                        

                        <div class="veen">
                            <div class="submit">
                                <button class="dark"><a href="actividades.jsp" style="text-decoration:none" class="dark text-dark">Ver lista de Actividades</a></button>
                            </div>
                        </div>
                    </ul>
                    <ul class="lista-datos">
                        <li><i class="icono fas fa-map-marker-alt"></i>Nro de Habitación: <%=adultos.obtener(index).getNumero_habitacion()%></li>
                        <li><i class="icono fas fa-briefcase"></i>Encargado: <%=adultos.obtener(index).getEncargado()%></li>
                        <li><i class="icono fas fa-ambulance"></i>Teléfono urgencias: 125 </li>
                        <h1> </h1>
                       

                        <div class="veen">
                            <div class="submit">
                                <button class="dark"><a href="medicamentos.jsp" style="text-decoration:none" class="dark text-dark">Ver lista de Medicamentos</a></button>
                            </div>
                        </div>
                    </ul>
                    <div class="veen1">
                        <div class="submit">
                            <button class="dark"><a href="adultosMayores.jsp" class="dark text-dark">Volver</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>

</html>