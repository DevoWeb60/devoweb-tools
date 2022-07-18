<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

DEFINE('username', 'root');
DEFINE('password', 'root');
DEFINE('host', 'localhost');
DEFINE('database', 'devoweb-tools');

$db = new PDO('mysql:host=' . host . ';dbname=' . database . ';charset=utf8', username, password);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$favoris = $db->query('SELECT * FROM tools WHERE category_id = 2');
$favoris = $favoris->fetchAll(PDO::FETCH_OBJ);

$vscode = $db->query('SELECT * FROM tools WHERE category_id = 1');
$vscode = $vscode->fetchAll(PDO::FETCH_OBJ);

echo json_encode([
    'favoris' => $favoris,
    'vscode' => $vscode
]);
