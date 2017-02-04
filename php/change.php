<?php 
function change(){
	try{
		define(DB_USER,'root');
		define(DB_PASSWORD,'1');
		$link=new PDO("mysql:host=localhost;dbname=washmachine",DB_USER,DB_PASSWORD,
               array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
                        \PDO::ATTR_PERSISTENT => false,
                        \PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8mb4'
                    )
                );
		$handle=$link->prepare("SELECT id FROM `data` WHERE Status='progress' "); 
	    $handle->execute();
		$result=$handle->fetch(PDO::FETCH_ASSOC);
        $id = (int) $result['id'];
		$handle=$link->prepare("UPDATE data SET `Status` = 'done' WHERE id = '$id'");
		$handle->execute();
		$id = $id+1;
		$handle=$link->prepare("UPDATE data SET `Status` = 'progress' WHERE id = '$id'");
		$handle->execute();
	}
	catch(Exception $e){
		return $e;
	}
}
echo change();
 ?>