<?php

@session_start();

if(isset($_SESSION['idTipoLogin'])) {
    if($_SESSION['idTipoLogin'] == 2) { ?>

<!DOCTYPE html>
<html>
	<?php include 'header.php'; ?>

<body>

	<!-- NAVEGACIÓN PRINCIPAL -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#main-nav">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"
						title="Sistema Unico de Gestión de Playas de Acarreo">SUGPA</a>
				</div>
				<div class="collapse navbar-collapse" id="main-nav">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="../../../sugpa/app/index.php?sugpa=AdmBienvenido">Volver</a></li>
						<li><a href="../../../sugpa/app/index.php?sugpa=perfil"><span class="glyphicon glyphicon-user"></span>
						<?php echo $_SESSION['nombre']." ".$_SESSION['apellido']; ?> </a></li>
						<li><a href="../../../sugpa/app/index.php?sesion=logout"><span
								class="glyphicon glyphicon-log-in"></span> Salir</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!-- FIN DE NAVEGACIÓN PRINCIPAL -->
	
	<br>
	<?php if(isset( $_SESSION['msjUsuario'] )) { 
        echo '<div class="container">
                <div class="col-xs-12">
                    <div class="alert-spot alert-spot-success">
                        <div class="alert-link-text">
                            <h4>' . $_SESSION['msjUsuario'] . '</h4>
                        </div>
                    </div>
                </div>
              </div>';
        unset( $_SESSION['msjUsuario'] ); }     
    ?>
    <?php if(isset( $_SESSION['msjUseer'] )) { 
        echo '<div class="container">
                <div class="col-xs-12">
                    <div class="alert-spot alert-spot-success">
                        <div class="alert-link-text">
                            <h4>' . $_SESSION['msjUseer'] . '</h4>
                        </div>
                    </div>
                </div>
              </div>';
        unset( $_SESSION['msjUseer'] ); }     
    ?>
    <?php if(isset( $_SESSION['msjUsuarioError'] )) { 
        echo '<div class="container">
                <div class="col-xs-12">
                    <div class="alert-spot alert-spot-danger">
                        <div class="alert-link-text">
                            <h4>' . $_SESSION['msjUsuarioError'] . '</h4>
                        </div>
                    </div>
                </div>
              </div>';
        unset( $_SESSION['msjUsuarioError'] ); }     
    ?>
    <?php if(isset( $_SESSION['msjUseerError'] )) { 
        echo '<div class="container">
                <div class="col-xs-12">
                    <div class="alert-spot alert-spot-danger">
                        <div class="alert-link-text">
                            <h4>' . $_SESSION['msjUseerError'] . '</h4>
                        </div>
                    </div>
                </div>
              </div>';
        unset( $_SESSION['msjUseerError'] ); }     
    ?>

<div class="modal js-loading-bar">
 <div class="modal-dialog">
   <div class="modal-content">
         <div class="progress progress-popup">
        <div class="progress-bar"></div>
       </div>
     </div>
   </div>
 </div>

	<div class="container">
		<h2>Administrar Usuarios</h2>
		<br>
		<div class="panel-group">
			<div class="panel panel-primary">
				<div class="panel-heading"><b>Listado de usuarios de SUGPA</b></div>
				<div class="panel-body">
					<table class="table table-striped table-bordered nowrap cargando" cellspacing="0" width="100%" id="usuariosadmin">
						<thead>
							<tr>
								<th></th>
								<th>DNI</th>
								<th>NOMBRE</th>								
								<th>APELLIDO</th>
								<th>EMAIL</th>
								<th>USUARIO</th>
								<th>PRIVILEGIO</th>
							</tr>
						</thead>
					</table>
					<br>
  						<div class="row">
                          <div class="col-md-4">
							<a onclick="printPage()" class="btn btn-primary btn-l">
		      					<span class="glyphicon glyphicon-print"></span> Imprimir Listado 
		    				</a></div>
                          <div class="col-md-4"><a onclick="tablesToExcel(['usuariosadmin'], ['Listado de usuarios'], 'UsuariosSUGPA.xls', 'Excel')" class="btn btn-primary btn-l">
		      					<span class="glyphicon glyphicon-export"></span> Exportar a Excel 
		    				</a></div>
                          <div class="col-md-4">
                          	<a class="btn btn-primary btn-l" data-toggle="modal" data-target="#agregarusuario">
		      					<span class="glyphicon glyphicon-plus-sign" ></span> Agregar usuario
		    				</a></div>
                        </div>
				</div>
			</div>
		</div>
	</div>
	<!-- FIN CONTENIDO -->
	<!-- INICIO MODAL -->
		<div class="container">
        <!-- Modal -->
  		<div class="modal fade" id="agregarusuario" role="dialog">
    		<div class="modal-dialog">
    
            <!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header">
          			<button type="button" class="close" data-dismiss="modal">&times;</button>
          			<h4 class="modal-title">Alta de usuario</h4>
        		</div>
      		<div class="modal-body">
	  		<main class="main-container no-padding-top" role="main">
      		<section>   
        		<form id="frmAltaUsuario" action="../../../sugpa/app/index.php" method="POST" onsubmit="submitUsuario.disabled=true; submitUsuario.value='Enviando..'; return true;">
        		<input type="hidden" name="sugpa" value="AdministrarUsuario"/>
        		<input type="hidden" name="abm" value="1"/>
          		<div class="container">
            		<div class="form-group">
                		<label for="alta"></label>
                		<br>
                		<div class="row">
                        	<div class="form-group">
                        		<div class="row"><div class="col-xs-6"><label for="usuario">Nombre de Usuario:</label><input class="form-control input-lg" autocomplete="off" minlength="7" name="usuario" id="usuario" type="text" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="apell">Apellido:</label><input class="form-control input-lg" autocomplete="off" name="apell" id="apell" type="text" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="nom">Nombre:</label><input class="form-control input-lg" autocomplete="off" name="nom" id="nom" type="text" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="dni">Dni:</label><input class="form-control input-lg" autocomplete="off" name="dni" id="dni" type="number" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="email">Email:</label><input class="form-control input-lg" autocomplete="off" name="email" id="email" type="email" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="tipopri">Privilegio de usuario:</label><select class="form-control input-lg"  id="tipo" name="tipo" required><option value="" selected="">Seleccionar</option>
												<option value="1">AGENTE DE PLAYA</option>
												<option value="2">ADMINISTRADOR DE SUGPA</option>
											</select></div></div>
                 			</div> <br> 
              			<div class="row">
                			<div class="col-xs-6"><input type="submit" name="submitUsuario" class="btn btn-primary btn-lg" value="Agregar" ></div>
           				</div>
          			</div>
          		</div>
          		</div>	
        		</form>
       		</section>
   			 </main> 
     		</div>
        		<div class="modal-footer">
          			<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        		</div>
     		</div>   
    	</div>
  		</div>
	</div>
    <!-- FIN MODAL -->        
    <?php include 'footer.php'; ?>
 
    <!-- JAVASCRIPT EXTRA -->
	   <script src="../../../sugpa/bastrap3/assets/buenosaires.js"></script>
    <script src="../../../sugpa/bastrap3/js/jquery.min.js"></script>
    <script src="../../../sugpa/bastrap3/js/jquery.dataTables.min.js"></script>
    <script src="../../../sugpa/bastrap3/js/bootstrap.min.js"></script>
    <script src="../../../sugpa/bastrap3/js/script.js"></script>
     <script src="../../../sugpa/bastrap3/js/admin.js"></script>
</body>

</html>

<?php 

    }
    else { require_once 'iniciarSesion.php'; }      
}
else { require_once 'iniciarSesion.php'; }

?>