<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="SistemaVentas.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/IniciarSesion/styles2.css" rel="stylesheet" type ="text/css"/>
    <link href="Assets/Plugins/Simple_Line_Icons/simple-line-icons.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&family=Ubuntu:wght@500&display=swap" rel="stylesheet">
    <script src="Assets/Plugins/jquery/jquery.3.5.1.min.js"></script>



    

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <section>
        <div class="registration-form">
            <form>
                <h1>Iniciar Sesion</h1>
                <div>
                    <label>Email</label>
                    <input type="text" id="username" placeholder="Usuario" value="Admin"/>
                </div>
                <div>
                    <label>Contraseña</label>
                    <input type="password" id="password" placeholder="Contraseña" value="Admin123"/>
                </div>
                    <button id="btnIniciarSesion" type="button" class="btn btn-block create-account">Iniciar Sesión</button>
            </form>
        
        </div>
        <script src="Controlador/IniciarSesion/IniciarSesion.js"></script>
        <script src="Controlador/Utilidades.js"></script>
        <script src="Assets/Plugins/loadingoverlay/loadingoverlay.js"></script>

        <link href="Assets/Plugins/sweetalert2/sweetalert.css" rel="stylesheet" />
        <script src="Assets/Plugins/sweetalert2/sweetalert.js"></script>

    </section>
</body>
</html>
