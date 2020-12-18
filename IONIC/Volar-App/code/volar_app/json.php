<?php
	header('Access-control-Allow-Origin: *');
	header('Content-type: application/json');
	
	$data = array(
	'get'=> $_GET,
	'post'=>$_POST
	);
	echo json_encode($data);
?>