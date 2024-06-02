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
    <title>Login - Dashboard</title>
</head>
<style type="text/css">
		:root{
			--clr-primary: #0573ce;
			--clr-bg: #1f2937;
			--clr-txt: whitesmoke;
			--clr-link: #3B82F6;
			--clr-shadow: rgba(0, 0, 0, 0.3);
		}
		body,
		html {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		.user_card {
			height: 375px;
			width: 350px;
			margin-top: auto;
			margin-bottom: auto;
			background: var(--clr-bg);
			border: 0.5px solid grey;
			border-radius: 10px;
			position: relative;
			display: flex;
			justify-content: center;
			flex-direction: column;
			padding: 10px;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		}
		.brand_logo_container {
			position: absolute;
			height: 170px;
			width: 170px;
			top: -75px;
			left: 50%;
			border-radius: 50%;
			padding: 10px;
			text-align: center;
			transform: translate(-50%, 0);
		}
		.brand_logo {
			height: 150px;
			width: 150px;
			border-radius: 50%;
			box-shadow: 0 0 1px 4px #fff;
		}
		.form_container {
			margin-top: 70px;
			padding: 0 25px;
		}
		.form_container form{
			max-width: 350px !important;
			width: auto !important;
			border: unset !important;
			border-radius: unset !important;
			background-color: transparent !important;
			box-shadow: unset !important;
			padding: 0 !important;
			display: block !important;
		}
		form div{
			display: flex;
			flex-flow: row nowrap;
			margin-bottom: 25px;
		}
		form div.frm_csubmit{
			margin-bottom: 0px;
			display: block !important;
      padding: 0 !important;
		}
		.form_container form .input-group{
			display: flex !important;
			align-items: center;
			justify-content: center;
			position: relative;
		}
		.form_container form .input-group-append{
			position: absolute;
			margin-bottom: 0 !important;
			left: 0;
		}
		.form_container form .input-group-append svg{
			fill: #fff;
			max-width: 20px;
			width: auto;
			max-height: auto;
			height: auto;
		}
		.form_container form .input-group-after{
			position: absolute;
			margin-bottom: 0 !important;
			right: 3px;
		}
		.form_container form .input-group-after svg{
			fill: #fff;
			max-width: 20px;
			width: auto;
			max-height: auto;
			height: auto;
		}
		.form_container form input{
			display: flex !important;
			width: 100%;
			padding-left: 55px;
		}
		.login_btn {
			width: 100%;
			padding: 13px 0;
			background: var(--clr-primary) !important;
			color: white !important;
			display: block;
			/*
			font-size: 17px;
			font-weight: bold;
			*/
		}
		.login_btn:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.login_container {
			padding: 0 2rem;
		}
		.input-group-text {
			background: var(--clr-primary) !important;
			border: 0 !important;
			border-radius: 0.25rem 0 0 0.25rem !important;
			display: flex;
			align-items: center;
			justify-content: center;
			text-align: center;
			width: 40px;
			height: 47px;
			color: #fff !important;
		}
		.input-group-icon{
			display: flex;
			align-items: center;
			justify-content: center;
			text-align: center;
			width: 40px;
			height: 47px;
			color: #fff !important;
		}
		.input_user,
		.input_pass:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.custom-checkbox .custom-control-input:checked~.custom-control-label::before {
			background-color: #c0392b !important;
		}
		#icon-showPassAdm{
			cursor: pointer;
		}
</style>
<body>
    <section>
        <!--
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
				-->


        <!-- NUEVOS ESTILOS (LOGIN) -->
        <div class="container h-100">
					<div class="d-flex justify-content-center h-100">
						<div class="user_card">
							<div class="d-flex justify-content-center">
								<div class="brand_logo_container">
									<img src="Assets/Images/logo_innovatech.jpg" class="brand_logo" alt="Logo">
								</div>
							</div>
							<div class="d-flex justify-content-center form_container">
								<form>
									<div class="input-group mb-3">
										<div class="input-group-append">
											<span class="input-group-text">
												<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 512 640" enable-background="new 0 0 512 512" xml:space="preserve" width="20px" height="20px"><g><path d="M256,256c52.805,0,96-43.201,96-96s-43.195-96-96-96s-96,43.201-96,96S203.195,256,256,256z M256,304   c-63.598,0-192,32.402-192,96v48h384v-48C448,336.402,319.598,304,256,304z"/></g></svg>
											</span>
										</div>
										<input type="text" name="username" id="username" class="form-control input_user" value="Admin" placeholder="username">
									</div>
									<div class="input-group mb-2">
										<div class="input-group-append">
											<span class="input-group-text">
												<svg xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="-5.0 -10.0 110.0 135.0" width="20px" height="20px"><path d="m65.625 0c-18.98 0-34.375 15.395-34.375 34.375l0.007812 9.375-31.258 31.25v25h25.004v-12.5l12.492 0.007812 0.007812-12.508h12.5l6.25-6.25h9.3672c18.992 0 34.375-15.395 34.375-34.375 0.003906-18.98-15.383-34.375-34.371-34.375zm6.25 37.5c-5.1758 0-9.375-4.1992-9.375-9.375 0.007812-5.1758 4.1992-9.375 9.375-9.375 5.1836 0 9.375 4.1992 9.375 9.375s-4.1953 9.375-9.375 9.375z"/></svg>
											</span>
										</div>
										<input type="password" name="password" id="password" class="form-control input_pass" value="Admin123" placeholder="password">
										<div class="input-group-after">
											<span class="input-group-icon">
                        <span id="icon-showPassAdm">
													<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" class="cLoginAdm__cont--fLogin--form--controls--cIcon--pass"><path d="M12.015 7c4.751 0 8.063 3.012 9.504 4.636-1.401 1.837-4.713 5.364-9.504 5.364-4.42 0-7.93-3.536-9.478-5.407 1.493-1.647 4.817-4.593 9.478-4.593zm0-2c-7.569 0-12.015 6.551-12.015 6.551s4.835 7.449 12.015 7.449c7.733 0 11.985-7.449 11.985-7.449s-4.291-6.551-11.985-6.551zm-.015 3c-2.209 0-4 1.792-4 4 0 2.209 1.791 4 4 4s4-1.791 4-4c0-2.208-1.791-4-4-4z"/></svg>
                        </span>
											</span>
										</div>
									</div>
									<div class="d-flex justify-content-center mt-3 login_container frm_csubmit">
				 						<button type="button" name="button" id="btnIniciarSesion" class="btn btn-block login_btn create-account">Iniciar Sesión</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>




        <script src="Controlador/IniciarSesion/IniciarSesion.js"></script>
        <script src="Controlador/Utilidades.js"></script>
        <script src="Assets/Plugins/loadingoverlay/loadingoverlay.js"></script>
        <link href="Assets/Plugins/sweetalert2/sweetalert.css" rel="stylesheet" />
        <script src="Assets/Plugins/sweetalert2/sweetalert.js"></script>
    </section>
</body>
</html>