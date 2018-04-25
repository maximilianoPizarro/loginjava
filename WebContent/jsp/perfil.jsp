<%@page language="java"  contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1" %>
 <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	
	<body>
    
    <!-- NAVEGACI�N PRINCIPAL -->
    <nav class="navbar navbar-default" role="navigation">
      <div class="container">
        <div class="row">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" title="Sistema �nico de Gesti�n de Playas de Acarreo">SUGPA</a>
           </div>
          <div class="collapse navbar-collapse" id="main-nav">
            <ul class="nav navbar-nav navbar-right">
		      <li><a href="../../../sugpa/app/index.php?sugpa=IniciarSesion">Volver</a></li>
		      <li><a href="../../../sugpa/app/index.php?sugpa=perfil"><span class="glyphicon glyphicon-user"></span> 
		      </a></li>
      		  <li><a href="../../../sugpa/app/index.php?sesion=logout"><span class="glyphicon glyphicon-log-in"></span> Salir</a></li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <!-- FIN DE NAVEGACI�N PRINCIPAL -->
    
    <!-- CONTENIDO -->

<!--

ACA VAN LOS CARTELES DE OPERACION EXITOSA Y ERROR

-->
    
    <main class="main-container no-padding-top" role="main">
      <section>
        <div class="container">
          <h1 class="text-center">Perfil</h1>
          <br>
          <br>
          <div class="row">
            <div class="tab-content col-sm-6 col-sm-offset-3">

              <ul class="nav nav-pills nav-justified">
                <li role="perfil" class="active"><a class="" href="#usuario" aria-controls="usuario" role="tab" data-toggle="tab">Datos del Usuario</a></li>
                <li role="perfil"><a class="" href="#cuenta" aria-controls="cuenta" role="tab" data-toggle="tab">Datos de la Cuenta</a></li>
              </ul>

              <br><br>

              <!-- Datos Usuario -->
              <div role="tabpanel" class="tab-pane active" id="usuario">
              
              	<div class="col-lg-12">
                <div class="panel panel-default">
                  <div class="panel-heading text-center"><b>Datos del usuario</b></div>
                  <div class="panel-body">
                      <div class="form-group">
                        <p><strong>Apellido: </strong></p>
                      </div>
                      <div class="form-group">
                      	<p><strong>Nombre: </strong></p>
                      </div>
                      <div class="form-group">
                      	<p><strong>Dni: </strong></p>
                      </div>
                  </div>
                </div>
                </div>
                
                <div class="col-lg-12">
                <div class="panel panel-default">
                  <div class="panel-heading text-center"><b>Cambiar direcci&oacuten de email</b></div>
                  <div class="panel-body">
                    <form action=" ../../../sugpa/app/index.php " method="POST" onsubmit="submitEmail.disabled=true; submitEmail.value='Enviando..'; return true;">
                    	<input type="hidden" name="sugpa" value="perfilUpdate">
                    	<input type="hidden" name="profile" value="1">
                      <div class="form-group">
                        <label for="email">Email:</label>
                        <input class="form-control" name="email" id="email" type="email" value="" autocomplete="off" required>
                      </div>
                      <input type="submit" name="submitEmail" class="btn btn-primary pull-right" value="Cambiar">
                    </form>
                  </div>
                </div>
                </div>
            	<p><center>Para cambiar sus datos personales <br> pongase en contacto con un administrador de SUGPA</center></p>
              </div>
              <!-- Fin Datos Usuario -->
              
              <!-- Datos Cuenta -->
              <div role="tabpanel" class="tab-pane" id="cuenta">
                
                <div class="col-lg-12">
                <div class="panel panel-default">
                  <div class="panel-heading text-center"><b>Cuenta</b></div>
                  <div class="panel-body">
                  	<label for="tipo">Tipo de Usuario:</label>
                  	<form action=" ../../../sugpa/app/index.php " method="POST" onsubmit="submitUseer.disabled=true; submitUseer.value='&nbsp&nbsp&nbsp&nbsp&nbsp;Enviando..&nbsp&nbsp&nbsp&nbsp&nbsp;'; return true;">
                  		<input type="hidden" name="sugpa" value="perfilUpdate">
                    	<input type="hidden" name="profile" value="2">
                      <div class="form-group">
                        <label for="useer">Nombre de Usuario:</label>
                        <input class="form-control" minlength="5" name="useer" id="useer" type="text" value="" autocomplete="off" required>
                      </div>
                      <div class="form-group"> 
                      </div>
                      <input type="submit" name="submitUseer" class="btn btn-primary pull-right" value="Cambiar Nombre Usuario">
                    </form>  
                  </div>
                </div>
                </div>

                <div class="col-lg-12">
                <div class="panel panel-default">
                  <div class="panel-heading text-center"><b>Cambiar Contraseña</b></div>
                  <div class="panel-body">
                    <form action=" ../../../sugpa/app/index.php " method="POST" onsubmit="submitContra.disabled=true; submitContra.value='Enviando..'; return true;">
                    	<input type="hidden" name="sugpa" value="perfilUpdate">
                    	<input type="hidden" name="profile" value="3">
                      <div class="form-group">
                        <label for="cAntigua">Contraseña antigua:</label>
                        <input class="form-control" name="cAntigua" id="cAntigua" type="password" required>
                      </div>
                      <div class="form-group">
                        <label for="cNueva">Nueva contraseña:</label>
                        <input class="form-control" minlength="8" name="cNueva" id="cNueva" type="password" required>
                      </div>
                      <div class="form-group">
                        <label for="cConfirm">Confirmar contraseña:</label>
                        <input class="form-control" minlength="8" name="cConfirm" id="cConfirm" type="password" required>
                      </div>
                      <input type="submit" name="submitContra" class="btn btn-primary pull-right" value="Cambiar">
                    </form>
                  </div>
                </div>
                </div>
                
              </div>
              <!-- Fin Datos Cuenta -->
            </div>
          </div> 
        </div>
      </section>
    </main>
     <!-- FIN CONTENIDO -->    


    <%@include file="footer.jsp" %>	
    
    <script src="../../../sugpa/bastrap3/jquery.min.js"></script>
    <script src="../../../sugpa/bastrap3/bootstrap.min.js"></script>
    <!-- JAVASCRIPT EXTRA -->    
        
    </body>
</html>