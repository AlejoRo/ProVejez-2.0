<%-- 
    Document   : agenda
    Created on : 27/08/2021, 4:17:52 p. m.
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="listas.ListaSEAdulto"%>
<%@page import="modelo.AdultoMayor"%>
<%@page import="listas.ListaSEMedicamento"%>
<%@page import="listas.ListaSEActividad"%>
<%@page import="java.util.Date" %>
<%@page import="java.util.Calendar" %>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">
        <link rel="stylesheet" href="estilos/style_agenda.css">
        <title>Agenda</title>
    </head>

    <body>
        <%
            HttpSession sesion = request.getSession();
            ListaSEAdulto adultos = (ListaSEAdulto)sesion.getAttribute("misAdultos");
        %>
        <img src="images/LogoCompleto.png" class="logo" height="450" width="400">


        <div class="veen2">
            <div class="submit">
                <button class="dark"><a href="adultosMayores.jsp" style="text-decoration:none" class="dark text-dark">Ver lista completa de<br>los adultos mayores</a></button>
            </div>
        </div>

        <div class="container">
            <div class="row justify-content-between">
                <form id="signup">
                    <center><img src="images/LetraLogo.png" class="logo1" height="50" width="140"></center>
                    <div class="col-12">
                        <h5 class="mt-3">Agenda: dar clic en el adulto mayor para ver sus tareas</h5>
                        <div class="accordion accordion-flush mt-1 mr-5" id="scroll">
                            <%!
                                public static String obtenerDiaSemana() {
                                String[] dias = {"domingo", "lunes", "martes", "miercoles", "jueves", "viernes", "sabado"};
                                Date hoy = new Date();
                                int numeroDia = 0;
                                Calendar cal = Calendar.getInstance();
                                cal.setTime(hoy);
                                numeroDia = cal.get(Calendar.DAY_OF_WEEK);
                                return dias[numeroDia - 1];
                                }
                            %>
                            <%
                            if(adultos.esVacia() == true){                                
                               for(int i = 0; i < adultos.tamanio(); i++) {
                            %>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-heading<%=i%>">
                                    <button class="accordion-button collapsed" type="button" 
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapse<%=i%>" 
                                            aria-expanded="false" aria-controls="flush-collapse<%=i%>">
                                        <div class="justify-content-beetwen">
                                            <%=adultos.obtener(i).nombre%> <%=adultos.obtener(i).apellidos%>
                                        </div>

                                    </button>
                                </h2>

                                <div id="flush-collapse<%=i%>" class="accordion-collapse collapse" 
                                     aria-labelledby="flush-heading<%=i%>" data-bs-parent="#accordionFlushExample">

                                    <div class="accordion-body ">
                                        Medicamentos:
                                        <%
                                            ListaSEMedicamento auxMedi = adultos.obtener(i).medicamentosDia(obtenerDiaSemana());
                                            for (int j = 0; j < auxMedi.tamanio(); j++ ){
                                        %>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <%=auxMedi.obtener(j).getHoraMedicamento()%>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <%=auxMedi.obtener(j).getNombreMedicamento()%>&nbsp;&nbsp;&nbsp;&nbsp; 
                                                <%=auxMedi.obtener(j).getDosisMedicamento()%> 
                                            </label>
                                        </div>
                                        <%
                                            }
                                        %>
                                        Actividades:
                                        <%
                                            ListaSEActividad auxActi = adultos.obtener(i).actividadesDia(obtenerDiaSemana());
                                            for (int j = 0; j < auxActi.tamanio(); j++ ){
                                        %>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <%=auxActi.obtener(j).getHora_actividad()%>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <%=auxActi.obtener(j).getNombre_actividad()%>&nbsp;&nbsp;&nbsp;&nbsp; 
                                                <%=auxActi.obtener(j).getDescripcion_actividad()%> 
                                            </label>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                            <%   
                                }
                                } else {
                                    out.println("No hay tareas para mostrar");
                                }
                            %>
                        </div>
                    </div>

                </form>

            </div>
            <script src="js/query.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    </body>

</html>