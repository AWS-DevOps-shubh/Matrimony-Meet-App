<?php
include "config.php";
$data = json_decode(file_get_contents("php://input"));
$email = $data->email;
$password = password_hash($data->password, PASSWORD_BCRYPT);
$db->users->insertOne(["email" => $email, "password" => $password]);
echo json_encode(["message" => "User registered successfully"]);
?>