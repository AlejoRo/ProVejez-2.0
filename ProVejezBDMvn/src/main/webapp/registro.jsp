<%-- 
    Document   : registro
    Created on : 27/08/2021, 1:53:48 a. m.
    Author     : alejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos/style_registro.css">
        <title>Provejez</title>
    </head>

    <body>
    <center>
        <image class="logo" src="images/LetraLogo.png" width="200" height="70"></image>
    </center>
    <div class="container">

        <form id="signup">

            <div class="header">

                <h3>Registro</h3>

                <p>Completa los siguientes campos.</p>

            </div>

            <div class="sep"></div>

            <div class="inputs">

                <input type="email" placeholder="Nombres" autofocus />
                <input type="email" placeholder="Apellidos" autofocus />
                <input type="email" placeholder="Identificación" autofocus />
                <input type="password" placeholder="Contraseña" autofocus />


                <div class="checkboxy">
                    <input name="cecky" id="checky" value="1" type="checkbox" /><label class="terms">Acepto todos los términos y
                        condiciones</label>
                </div>
                <div class="veen">
                    <div class="submit">
                        <button class="dark"><a href="#" style="text-decoration:none" class="dark">Registrarse</a></button>
                    </div>       
                </div>
                <div class="veen1">
                    <div class="submit">
                        <button class="dark"><a href="inicio.jsp" style="text-decoration:none" class="dark">Volver</a></button>
                    </div>
                </div>
            </div>

        </form>

    </div>
</body>

</html>
