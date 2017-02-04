<?php 
function display(){
	try{
		define(DB_USER,'root');
		define(DB_PASSWORD,'1');
		$link=new PDO("mysql:host=localhost;dbname=washmachine",DB_USER,DB_PASSWORD,
               array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
                        \PDO::ATTR_PERSISTENT => false,
                        \PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8mb4'
                    )
                );
		$handle=$link->prepare("SELECT * FROM `data` WHERE Status='queed' OR Status='progress' "); 
	    $handle->execute();
		$result=$handle->fetchall(PDO::FETCH_ASSOC);
		return json_encode($result);
	}
	catch(Exception $e){
		return $e;
	}
}
echo display();
 ?>