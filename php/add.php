<?php 
function add(){
	try{
		$name = $_REQUEST['name'];
		$mobnum = $_REQUEST['mobnum'];
		$roomnum = $_REQUEST['roomnum'];
		$hostel = $_REQUEST['hostel'];
		$status = "queed";
		define(DB_USER,'root');
		define(DB_PASSWORD,'1');
		$link=new PDO("mysql:host=localhost;dbname=washmachine",DB_USER,DB_PASSWORD,
               array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
                        \PDO::ATTR_PERSISTENT => false,
                        \PDO::MYSQL_ATTR_INIT_COMMAND => 'set names utf8mb4'
                    )
                );
		$handle=$link->prepare("SELECT COUNT(id) AS id FROM `data` WHERE Status='queed' OR Status='progress' "); 
	    $handle->execute();
		$result=$handle->fetch(PDO::FETCH_ASSOC);
        $count = (int) $result['id'];
        if($count == 0){
        	$status = "progress";
        }
        else{
			$status = "queed";
        }
		$handle=$link->prepare("INSERT INTO `data`(`Name`, `MobNumber`, `RoomNumber`, `Hostel`, `Status`) VALUES ('$name','$mobnum','$roomnum','$hostel','$status')");
		$handle->execute();
		return "success";
	}
	catch(Exception $e){
		return $e;
	}
}
echo add();
 ?>