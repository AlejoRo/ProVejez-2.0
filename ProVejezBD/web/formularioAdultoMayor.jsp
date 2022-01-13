<%-- 
    Document   : pacientes
    Created on : 14/08/2021, 9:26:09 p. m.
    Author     : alejo
--%>

<%@page import="modelo.AdultoMayor"%>
<%@page import="modelo.Funcionalidad"%>
<%@page import="listas.ListaSEAdulto"%>
<%@page import="listas.ListaSEMedicamento"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="estilos/fondoboton.css">
        <title>Formulario adulto mayor</title>
    </head>
    <body>
        <ul class="nav justify-content-center bg-light">
            <li class="nav-item">
                <h2>AGREGAR ADULTO MAYOR</h2>
            </li>
        </ul>
        <div class = "container mt-4">
            <div class = "row justify-content-md-center">
                <div class = "col-lg-6">
                    <form action="adultosMayores.jsp" method="post">
                        <div class="mb-3">
                            <label>Número de identificación</label>
                            <input type="text" class="form-control" name="identificacion" placeholder="identificacion">
                        </div>
                        <div class="mb-3">
                            <label>Nombres</label>
                            <input type="text" class="form-control" name="nombre" placeholder="nombre">
                        </div>
                        <div class="mb-3">
                            <label>Apellidos</label>
                            <input type="text" class="form-control" name="apellidos" placeholder="apellidos">
                        </div>
                        <div class="mb-3">
                            <label>Número de habitación</label>
                            <input type="text" class="form-control" name="numero_habitacion" placeholder="habitación">
                        </div>
                        <div class="mb-3">
                            <label>Encargado/Responsable</label>
                            <input type="text" class="form-control" name="encargado" placeholder="nombre responsable">
                        </div>

                        <div class="d-grid gap-2 d-md-flex justify-content-between">
                            <div class="veen">
                                <a href="adultosMayores.jsp" class="dark">Volver</a>
                            </div>
                            <div class="veen">
                                <button type="submit" class="dark">Agregar</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>            
        </div>
    </body>
</html>
