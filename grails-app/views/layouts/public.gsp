<!DOCTYPE html>
<%--<%@page import="br.gov.rn.saogoncalo.academico.Transferencia %>
--%><%@page import="java.lang.System"%>


<html>
  <head>
    <meta charset="UTF-8">
    <title><g:layoutTitle default="SISEDUC . Painel"/></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    
    <!-- Bootstrap 3.3.2 -->
    <link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet">
    
    <!-- Font Awesome Icons -->
    <link href="${resource(dir: 'css', file: 'font-awesome.min.css')}" rel="stylesheet">
    
    <!-- Ionicons -->
    <link href="${resource(dir: 'css', file: 'ionicons.min.css')}" rel="stylesheet">
    
    <!-- Morris chart -->
    <link href="${resource(dir: 'css', file: 'morris/morris.css')}" rel="stylesheet">
    
    <!-- jvectormap -->
    <link href="${resource(dir: 'css', file: 'jvectormap/jquery-jvectormap-1.2.2.css')}" rel="stylesheet">
    
    <!-- Daterange picker -->
    <link href="${resource(dir: 'css', file: 'daterangepicker/daterangepicker-bs3.css')}" rel="stylesheet">
    
    <!-- Bootstrap Select -->
    <link href="${resource(dir: 'css', file: 'bootstrap-select.css')}" rel="stylesheet">

	<!-- DataTable Bootstrap -->
	<link href="${resource(dir: 'css', file: 'dataTables.bootstrap.css')}"	rel="stylesheet">
	
    <!-- Theme style -->
    <link href="${resource(dir: 'css', file: 'AdminLTE.min.css')}" rel="stylesheet">
    
    <!-- Form Wizard -->
    <link href="${resource(dir: 'css', file: 'style-form-wizard.css')}" rel="stylesheet">
    
    <!-- Jasny Mask Bootstrap -->
    <link href="${resource(dir: 'css', file: 'jasny-bootstrap.min.css')}" rel="stylesheet">
    
    <!-- Bootstrap Master -->
    <link href="${resource(dir: 'css', file: 'bootstrap-modal-master/css/bootstrap-modal.css')}" rel="stylesheet">    
    
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="${resource(dir: 'css', file: 'skins/_all-skins.min.css')}" rel="stylesheet">
    
     <!-- Bootstrap Models Manager -->
    <link href="${resource(dir: 'css', file: 'bootstrap-modal-master/css/bootstrap-modal.css')}" rel="stylesheet">
    
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    	.box-white {
    		border-radius: 0; 
    		border-top: 0; 
    		padding: 1%;
    	}
    	.link-black {
    		color: #000 !important;
    	}
    	.link-black:hover {
    		color: #000 !important;
    		text-shadow: .5px .5px 1px #808080;
    	}
    	.no-active{
    		pointer-events: none;
    		cursor: default;
    		color: #767676 !important;
    		background-color: #E5E5E5;
    	}
    	.hidden {
    		display: none;
    	}
    	.visible {
    		display: block;
    	}
    </style>
    <!-- jQuery 2.1.3 -->
    <g:javascript src="jQuery/jQuery-2.1.3.min.js" />
  </head>
  <body class="skin-blue">
  	
    <div class="wrapper">
      <header class="main-header">
        <!-- Logo -->
        <g:link controller="Layout" action="index" class="logo"><g:img dir="img" file="logo-SISEDUC.png" style="width: 90%; margin-top: -6%;" class="img-circle" alt="Logo do Sistema"/></g:link><%--
                
        <g:link controller="Layout" action="index" class="logo"><g:img dir="img" file="fundo_transparente.png" style="width: 90%; margin-top: -6%;"/></g:link>
        
        --%><!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <g:img dir="img" file="photo-profile-default-gray.png" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">${session["pesnome"].split(" ")[0]} ${session["pesnome"].split(" ")[1]}</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                  	<g:img dir="img" file="photo-profile-default-gray.png" class="img-circle" alt="User Image"/>
                    <p>
                      ${session["pesnome"].split(" ")[0]} ${session["pesnome"].split(" ")[1]}<br>
                      <p style="font-size:12px;">
                       ${session["user"].split(" ")[0]} 
                       </p>

                    <p style="font-size: 12px;">
                    	${session["user"].split(" ")[0]}
                    </p>
                  </li>
                  
                  <!--Menu Body 
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li> -->
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <!--  <a href="#" class="btn btn-default btn-flat no-active">Meus Dados</a>  -->
                      <button class="btn btn-primary btn-flat" data-toggle="modal"
						data-target="#modalSenha">
						<i class="fa"></i> Alterar senha
					  </button>
                    </div>
                    <div class="pull-right">
                      <g:link controller="Usuario" action="deslogar" class="btn btn-default btn-flat">Sair</g:link>
                    </div>
                  </li>
                </ul>
              </li><%--
                  <!--notificaçao de transferencia-->
                  <script type="text/javascript">
                   function transferencia(){
   					var endereco = "${request.getRequestURL().substring(6, request.getRequestURL().indexOf(':8080/'))}";
   				     $.ajax({
			            type: "GET",
			            //url: "http://"+endereco+":8080/projetoMetafora/transferencia/alunosAguardandoAprovacao/",
			            url: "http://"+endereco+":8080/transferencia/alunosAguardandoAprovacao/",
			            dataType: "json",
			            success: function(result){

			            console.log('result ---- '+result);
			            document.getElementById("notTransferenciaId").innerHTML = ''+result;    
                         
                       }
   				 });
               }

                   transferencia();
                  </script>
                			  
              <li class="dropdown notifications-menu" style="position:absolute; right:18%;">   
            <a href="/projetoMetafora/transferencia/listar">
              <i class="fa fa-bell-o" style="position:absolute; top:20px; right:11px; padding:4px 20px" title="Transferencias pendentes"></i>
              <span class="label label-warning"  style="position:absolute; top:10px;  right:26px; font-size:9px; padding:2px 3px">
              <label id="notTransferenciaId" style="width:7px; heigth:3px"></label></span>
            </a>
            <!-- class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" -->
            </li>--%>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <g:img dir="img" file="photo-profile-default-gray.png" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
              <p style="margin-top: 10.5px;">${session["pesnome"].split(" ")[0]} ${session["pesnome"].split(" ")[1]}</p>

                      <p style="font-size:12px;">
                      
                       ${session["user"].split(" ")[0]}
                      
                      </p>
              
              <!-- <a href="#"><i class="fa fa-circle text-success"></i> Online</a> -->
            </div>
          </div>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MENU PRINCIPAL</li>
            <li class="active treeview">
              <g:link controller="Layout" action="index">
                <i class="fa fa-dashboard"></i> <span>Painel</span>
              </g:link>
            </li>
                <g:include controller="buildLeftMenu" action="montarMenu" />
            
           <!-- <li class="treeview">
              <a href="#">
                <i class="fa fa-cubes"></i> <span>Programas</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><g:link controller="Layout" action="index"><i class="fa fa-file-text-o"></i> PDDE</g:link></li>
				<li><g:link controller="Layout" action="index"><i class="fa fa-clock-o"></i> PNAIC</g:link></li>
				<li><g:link controller="Layout" action="index"><i class="fa fa-list-alt"></i> Mais Educação</g:link></li>
				<li><g:link controller="Layout" action="index"><i class="fa fa-home"></i> Bolsa Família</g:link></li>
              </ul>
            </li> 
            
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-globe"></i> <span>Georeferenciamento</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><g:link controller="Localizacao" action="alunos"><i class="fa fa-area-chart"></i> Alunos</g:link></li>
				<li><g:link controller="Layout" action="index"><i class="fa fa-area-chart"></i> Escolas</g:link></li>
				<li><g:link controller="Layout" action="index"><i class="fa fa-area-chart"></i> Funcionários</g:link></li>
				<li><g:link controller="Layout" action="index"><i class="fa fa-area-chart"></i> Professores</g:link></li>
              </ul>
            </li>
             -->

          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<g:layoutBody />
	  </div>	
      <footer class="main-footer">
          <div class="pull-right hidden-xs">
            <b>Version</b> 2.0
          </div>
          <strong> Copyright © 2014-2015 <a style="font-weight: 400;" href="#"><b>SIS</b>DOC</a>.</strong> Todos os direitos reservados. Contato SETIC: 98152-9740
      </footer>

			<!-- Modal Senha -->
			<div class="modal fade" id="modalSenha" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Redefinição de senha</h4>
						</div>
						<div class="modal-body">
							<g:form controller="Usuario" action="redefinirSenha" class="form">
								<fieldset>
									
									<div class="form-heading">
										<label>Senha antiga</label>
										<div class="controls">
											<g:textField class="form-control" name="senhaAntiga" value=""
												required="true" />
										</div>
									</div>
									<br>
									<div class="form-heading">
										<label>Senha nova</label>
										<div class="controls">
											<g:textField class="form-control" name="senhaNova1" value=""
												required="true" />
										</div>
									</div>
									<br>
									<div class="form-heading">
										<label>Confirmar senha nova</label>
										<div class="controls">
											<g:textField class="form-control" name="senhaNova2" value=""
												required="true" />
										</div>
									</div>
									
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary btn-flat">
										<i class="fa fa-save"></i> Cadastrar
									</button>
									<input type="reset" class="btn btn btn-flat" value="Limpar">
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</div>



    </div><!-- ./wrapper -->
    
    <!-- Bootstrap 3.3.2 JS -->
    <g:javascript src="bootstrap.js" />
    <!-- Jasny Mask Bootstrap -->
    <g:javascript src="jasny-bootstrap.min.js" />
    <!-- FastClick -->
    <g:javascript src="plugins/fastclick/fastclick.min.js" />
    <!-- AdminLTE App -->
    <g:javascript src="app.min.js" />
    <!-- Script Form Wizard -->
    <g:javascript src="script-form-wizard.js" />
    <!-- jQuery Data Tables -->
    <g:javascript src="jquery.dataTables.min.js" />
    <!-- Data Tables Bootstrap -->
    <g:javascript src="dataTables.bootstrap.js" />
    <!-- Data Table Script -->
    <g:javascript src="dataScript.js" />
    <!-- Bootstrap Select Search -->
    <g:javascript src="dist/js/bootstrap-select.js" />
    <!-- Sparkline -->
    <g:javascript src="plugins/sparkline/jquery.sparkline.min.js" />
    <!-- jvectormap -->
    <g:javascript src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" />
    <g:javascript src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" />
    <!-- daterangepicker -->
    <g:javascript src="plugins/daterangepicker/daterangepicker.js" />
    <!-- datepicker -->
    <g:javascript src="plugins/datepicker/bootstrap-datepicker.js" />
    <!-- iCheck -->
    <g:javascript src="plugins/iCheck/icheck.min.js" />
    <!-- SlimScroll 1.3.0 -->
    <g:javascript src="plugins/slimScroll/jquery.slimscroll.min.js" />
    <!-- ChartJS 1.0.1 -->
	<g:javascript src="plugins/chartjs/Chart.min.js" />
	<!-- Bootstrap Master -->
	<g:javascript src="bootstrap-modal-master/js/bootstrap-modal.js" />
	<!-- Bootstrap Master -->
	<g:javascript src="bootstrap-modal-master/js/bootstrap-modalmanager.js" />

	
    <!-- AdminLTE dashboard demo (This is only for demo purposes) 
	<g:javascript src="dashboard2.js" /> -->

    <!-- AdminLTE for demo purposes 
    <g:javascript src="demo.js" /> -->
  </body>
</html>
