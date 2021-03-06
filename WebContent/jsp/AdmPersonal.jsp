<%@page language="java"  contentType="text/html; charset=utf-8" pageEncoding="ISO-8859-1" %>
 <%@include file="header.jsp" %><!-- import="com.unla.datos.-usuario" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
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
						</a></li>
						<li><a href="../../../sugpa/app/index.php?sesion=logout"><span
								class="glyphicon glyphicon-log-in"></span> Salir</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!-- FIN DE NAVEGACIÓN PRINCIPAL -->
    
    <!-- 
    ACA VAN LOS CARTELES DE TRANSACCION EXITOSA Y DE ERROR
    
     -->


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
		<h2>Administrar Personal</h2>
		<br>
		<div class="panel-group">
			<div class="panel panel-primary">
				<div class="panel-heading"><b>Listado de agentes de transito y choferes de grua</b></div>
				<div class="panel-body">
					<table class="table table-striped table-bordered nowrap cargando"
						cellspacing="0" width="100%" id="personaladmin">
						<thead>
							<tr>
								<th></th>
								<th>DNI</th>
								<th>APELLIDO</th>
								<th>NOMBRE</th>
								<th>PERSONAL DE TIPO</th>
							</tr>
						</thead>
					</table>
					<br>
  						<div class="row">
                          <div class="col-md-4">
							<a onclick="printPage()" class="btn btn-primary btn-l">
		      					<span class="glyphicon glyphicon-print"></span> Imprimir Listado 
		    				</a></div>
                          <div class="col-md-4"><a onclick="tablesToExcel(['personaladmin'], ['Listado del personal'], 'PersonalSUGPA.xls', 'Excel')" class="btn btn-primary btn-l">
		      					<span class="glyphicon glyphicon-export"></span> Exportar a Excel 
		    				</a></div>
                          <div class="col-md-4">
                          	<a class="btn btn-primary btn-l" data-toggle="modal" data-target="#agregarpersonal">
		      					<span class="glyphicon glyphicon-plus-sign" ></span> Agregar Personal
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
  		<div class="modal fade" id="agregarpersonal" role="dialog">
    		<div class="modal-dialog">
    
            <!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header">
          			<button type="button" class="close" data-dismiss="modal">&times;</button>
          			<h4 class="modal-title">Agregar personal</h4>
        		</div>
      		<div class="modal-body">
	  		<main class="main-container no-padding-top" role="main">
      		<section>   
      		
        		<form id="frmAltaUsuario" action=" ../../../sugpa/app/index.php?sugpa=PersonalABM" method="post" onsubmit="submitPersonal.disabled=true; submitPersonal.value='Enviando..'; return true;">
        		<!-- <input type="hidden" name="sugpa" value=/> -->
        		<input type="hidden" name="abm" value="1"/>
          		<div class="container">
            		<div class="form-group">
                		<label for="alta"></label>
                		<br>
                		<div class="row">
                        	<div class="form-group">
            					<div class="row"><div class="col-xs-6"><label for="apell">Apellido:</label><input class="form-control input-lg" autocomplete="off" name="apell" id="apell" type="text" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="nom">Nombre:</label><input class="form-control input-lg" autocomplete="off" name="nom" id="nom" type="text" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="dni">Dni:</label><input class="form-control input-lg" autocomplete="off" name="dni" id="dni" type="number" required></div></div>
            					<div class="row"><div class="col-xs-6"><label for="tipo">Personal de tipo:</label><select class="form-control input-lg"  id="tipo" name="tipo" required><option value="" selected="">Seleccionar</option>
												<option value="1">AGENTE DE TRANSITO</option>
												<option value="2">CHOFER DE GRUA</option>
											</select></div></div>
                 			</div> <br> 
              			<div class="row">
                			<div class="col-xs-6"><input type="submit" name="submitPersonal" class="btn btn-primary btn-lg" value="Agregar" ></div>
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
	
        
    <%@include file="footer.jsp" %>	
 
    <!-- JAVASCRIPT EXTRA -->
    <script src="../../../sugpa/bastrap3/assets/buenosaires.js"></script>
    <script src="../../../sugpa/bastrap3/js/jquery.min.js"></script>
    <script src="../../../sugpa/bastrap3/js/jquery.dataTables.min.js"></script>
    <script src="../../../sugpa/bastrap3/js/bootstrap.min.js"></script>
    <script src="../../../sugpa/bastrap3/js/script.js"></script>
    <script src="../../../sugpa/bastrap3/js/admin.js"></script>
</body>


</html>
