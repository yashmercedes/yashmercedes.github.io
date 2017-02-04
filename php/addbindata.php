<?php 
function addbindata(){
	try{
		$colname = $_REQUEST['colname'];
		$value = $_REQUEST['value'];
		define(DB_USER,'root');
		define(DB_PASSWORD,'1');
		$link=new PDO("mysql:host=localhost;dbname=washmachine",DB_USER,DB_PASSWORD,
               array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
                        \PDO::ATTR_PERSISTENT => false,
                        \PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8mb4'
                    )
                );
	$handle=$link->prepare("UPDATE binvalues SET `$colname` = '$value' WHERE id = 1");
		$handle->execute();
		return "success";
	}
	catch(Exception $e){
		return "F";
	}
}
echo addbindata();
 ?>