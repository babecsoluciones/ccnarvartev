<?php
$conexion=mysql_connect("localhost","xhanorg_root","B@surto91");
mysql_select_db("xhanorg_coparmex");
$select="SELECT * FROM CatNegocios WHERE 1=1";
if((isset($_GET['tCategoria'])||isset($_GET['seccion']))&&($_GET['seccion']<>""||$_GET['tCategoria']<>"")){$select=$select." and tCodSeccion='$_GET[tCategoria]' OR tCodPadre='$_GET[seccion]'";}
if(isset($_GET['tServDom'])&&$_GET['tServDom']<>""){$select=$select." and tServDom='$_GET[tServDom]'";}
if(isset($_GET['v1'])){}
else{header('Location: negocios.php?v1=1&seccion=&tServDom=&tCategoria=');}
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Narvarte</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,600,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
	 <script src='jquery-3.0.0.js' type='text/javascript'></script>
	 
<style type="text/css">
    .mainCat {
    display:inline-block;
    color:#444;
    border:1px solid #CCC;
    background:RGBA(221,221,221,0.3);
    box-shadow: 0 0 5px -1px rgba(0,0,0,0.2);
    cursor:pointer;
    vertical-align:middle;
    padding: 5px;
    text-align: center;
    border-radius:5px;
}
.mainCat:hover {
    color:red;
    box-shadow: 0 0 15px -1px rgba(0,0,0,0.6);
}
</style>	

</head>
<body>
<div class="header" id="ban">
		<div class="container">
			<!--<div class="head-left wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
				<div class="header-search">
						<div class="search">
							<input class="search_box" type="checkbox" id="search_box">
							<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
							<div class="search_form">
								<form action="#" method="post">
									<input type="text" name="Search" placeholder="Search...">
									<input type="submit" value="Send">
								</form>
							</div>
						</div>
				</div>
			</div>-->
			<div class="header_right wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="link-effect-7" id="link-effect-7">
						<ul class="nav navbar-nav">
							<li><a href="index.html"><img src="images/logo.jpg" style="max-width: 40px; margin-top:-10px;" ></a></li>
							<li><a href="index.html">Inicio</a></li>
							<li><a href="conoce.html">Conoce tu colonia</a></li>
							<li><a href="emergencia.html">N&uacute;meros de emergencia</a></li>
							<li class="active act"><a href="negocios.php">Negocios</a></li>
							<li><a href="contact.html">Contacto</a></li>
						</ul>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
			</div>
			<!--<div class="nav navbar-nav navbar-right social-icons wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
					<ul>
						<li><a href="#"> </a></li>
						<li><a href="#" class="pin"> </a></li>
						<li><a href="#" class="in"> </a></li>
						<li><a href="#" class="be"> </a></li>
						
						<li><a href="#" class="vimeo"> </a></li>
					</ul>
				</div>-->
			<div class="clearfix"> </div>	
		</div>
	</div>
	<!--start-main-->
	<div class="header-bottom">
		<div class="container">
			<div class="logo wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
				<center><img src="images/logo.jpg" style="max-width: 200px; padding-bottom:-20px;" class="img-responsive"></center>
			</div>
		</div>
	</div>
<!-- banner -->


	<!-- technology-left -->
	<div class="technology">
	<div class="container">
		<div class="col-md-9 technology-left">
		<div class="tech-no">
			<!-- technology-top -->
			
			 <div class="tc-ch wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s" id="panelPrecios2">
			     
			     <!--si no hay una seleccion-->
			      <?php
			      	if($_GET['seccion']=="")
			      	{
						    $sql=mysql_query("SELECT * FROM opciones ORDER BY tCodPadre ASC");
						    while($row=mysql_fetch_array($sql))
						    {
						        $archivo='categorias/'.strtolower($row['tCodPadre']).'.png';
						        ?>
						        <div class="col-md-4 mainCat">
						            <h3><?=$row['tCodPadre']?></h3>
						        <a href="negocios.php?v1=1&tCategoria=<?=$_GET['tCategoria']?>&tServDom=<?=$_GET['tServDom']?>&seccion=<?=$row['tCodPadre']?>"  class="darken"><img src="<?=$archivo?>" class="img-responsive">
						        </a>
						        </div>
						        <?php
						    }
			      	}
			      	else
			      	{
						    ?>
			     <!--si no hay una seleccion-->
			    
				<!--tabla completa-->
				 <table  width='100%' border='1' style='border-collapse:collapse;'>
				 <thead>
					 <tr>
						 <!--<td>Categor&iacute;a</td>-->
						 <td>Nombre</td>
						 <td>Direcci&oacute;n y contacto</td>
						 <td>Abre de.</td>
						 <td>Serv. Dom</td>
					 </tr>
					 <tbody>
					 <?php
						 $rsNegocios=mysql_query($select);
						 while($row=mysql_fetch_array($rsNegocios))
						 {
							 echo '<tr>
							 <!--<td>'.utf8_encode($row['tCodSeccion']).'</td>-->
							 <td>'.utf8_encode($row['tNombre']).'</td>
							 <td>'.utf8_encode($row['tDomicilio']).'<br>'.$row['tTelefono'].'</td>
							 <td>'.$row['tDias'].'</td>
							 <td>'.$row['tServDom'].'</td>
							 </tr>';
						 }
						 ?>
					 </tbody>
					 </thead>
				 </table>
				 <!--tabla completa-->
				 <?
			      	}
			      	?>
					
						<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
			
			</div>
		</div>
		<!-- technology-right -->
		<div class="col-md-3 technology-right">
				
				
				<div class="blo-top1">
							
					<div class="tech-btm">
					<div class="search-1 wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
							<input type='search' id='txt_searchall' placeholder='Búsqueda rápida...'>&nbsp; 
						
						<!-- Script -->
        <script type='text/javascript'>
            $(document).ready(function(){

                // Search all columns
                $('#txt_searchall').keyup(function(){
                    // Search Text
                    var search = $(this).val();

                    // Hide all table tbody rows
                    $('table tbody tr').hide();

                    // Searching text in columns and show match row
                    $('table tbody tr td:contains("'+search+'")').each(function(){
                        $(this).closest('tr').show();
                    });
                    
                });

                // Search on name column only
                $('#txt_name').keyup(function(){
                    // Search Text
                    var search = $(this).val();

                    // Hide all table tbody rows
                    $('table tbody tr').hide();

                    // Searching text in columns and show match row
                    $('table tbody tr td:nth-child(2):contains("'+search+'")').each(function(){
                        $(this).closest('tr').show();
                    });
                    
                });
               
            });

            // Case-insensitive searching (Note - remove the below script for Case sensitive search )
            $.expr[":"].contains = $.expr.createPseudo(function(arg) {
                return function( elem ) {
                    return $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;
                };
            });
        </script>
						
						</div>
						
						<?php
						if($_GET['seccion']<>""||$_GET['tCategoria']<>""||$_GET['tServDom']<>"")
						{
							echo '<a href="negocios.php?v1=1&tCategoria=&seccion=&tServDom=" class="btn btn-danger" style="width:100%">Resetear filtros</a><br><br><br>';
						}
						else
						{
							?>
						
					
						<?
						}
						?>
						
						<?php
						$sql=mysql_query("SELECT * FROM opciones ORDER BY tCodPadre ASC");
						    while($row=mysql_fetch_array($sql))
						    {
						        if($_GET['seccion']==$row['tCodPadre'])
						        {$display="inline";}
						        else
						        {$display="none";}
						?>
						<div id="<?=$row['tCodPadre']?>" class=" wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s" style="display:<?=$display?>;">
					<h4><?=$row['tCodPadre']?></h4>
						<ul>
							<?php
						$consulta=mysql_query("SELECT * FROM categorias WHERE tCodPadre='$row[tCodPadre]' ORDER BY tCodSeccion ASC");
						while($rlink=mysql_fetch_array($consulta))
						{
						    $archivo='categorias/'.strtolower($row['tCodPadre']).'.png';
    if(file_exists($archivo))
    {
						    ?>
						    <li><a href="negocios.php?v1=1&tServDom=<?=$_GET['tServDom']?>&tCategoria=<?=$rlink['tCodSeccion']?>&seccion=<?=$_GET['seccion']?>"><img src="<?=$archivo?>" style="width:20px; height:20px;" alt="<?=$rlink['tCodSeccion']?>" data-tooltip="<?=utf8_encode($rlink['tCodSeccion'])?>"><?=utf8_encode($rlink['tCodSeccion'])?></a>
						    <?
    }
						}
						?>
						</ul>
					</div>
						<?
						    }
						if($_GET['seccion'])
						{
						    ?>
						
						<div class="wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
					<h4>Servicio a domicilio</h4>
					
							
						
<a href="negocios.php?v1=1&tCategoria=<?=$_GET['tCategoria']?>&tServDom=SI&seccion=<?=$_GET['seccion']?>" class="btn btn-info" style="width:100%;">SI</a><br><br>
<a href="negocios.php?v1=1&tCategoria=<?=$_GET['tCategoria']?>&tServDom=NO&seccion=<?=$_GET['seccion']?>" class="btn btn-danger" style="width:100%;">NO</a>
			
						
					</div>
						<?php
								}
								?>
					
					<script>
					    function resetear()
					    {
					        <?php
						    $sql=mysql_query("SELECT * FROM opciones ORDER BY tCodPadre ASC");
						    while($row=mysql_fetch_array($sql))
						    {
						        ?>
						        document.getElementById(<?=$row['tCodPadre']?>).style.display='none'; 
						        <?php
						    }
						    ?>
					    }
					    function Validar(codigo)
					    {
					       
					        var categoria = document.getElementById(codigo).value;
					        if(categoria!="")
					        {
					            <?php
						    $sql=mysql_query("SELECT * FROM opciones ORDER BY tCodPadre ASC");
						    while($row=mysql_fetch_array($sql))
						    {
						        ?>
						        document.getElementById("<?=$row['tCodPadre']?>").style.display='none'; 
						        <?php
						    }
						    ?>
					           document.getElementById(categoria).style.display='inline'; 
					        }
					        
					        
					    }
					</script>
					
					</div>
					
					
					
				</div>
				
			
		</div>
		<div class="clearfix"></div>
		<!-- technology-right -->
	</div>
</div>
<div class="footer">
		<img src="logo-luis.png" style="max-height: 75px;">
	</div>
	<div class="copyright wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
				<div class="container">
					<p>© 2017 Todos los Derechos Reservados | Desarrollado por <a href="https://www.facebook.com/BABEC-Soluciones-Inteligentes-931347607003970/">BABEC Soluciones Inteligentes</a></p>
				</div>
			</div>
			
			<script >$('#panelPrecios [data-toggle="tooltip"]').tooltip({
    animated: 'fade',
    placement: 'top',
    html: true
});
//# sourceURL=pen.js
</script>
            <script >$('#panelPrecios2 [data-toggle="tooltip"]').tooltip({
    animated: 'fade',
    placement: 'top',
    html: true
});
//# sourceURL=pen.js
</script>
			
</body>
</html>