<?php
$conexion=mysql_connect("localhost","terelope_root","B@surto91");
mysql_select_db("terelope_coparmex");

$sql=mysql_query("SELECT * FROM categorias");
while($row=mysql_fetch_array($sql))
{
    $archivo='iconos/'.strtolower($row['icono']).'.png';
    if(file_exists($archivo))
    {}
    else
    {echo 'Falta el archivo: '.$archivo.'<br>';}
}
?>