<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

DEFINE('username', 'root');
DEFINE('password', 'root');
DEFINE('host', 'localhost');
DEFINE('database', 'devoweb-tools');

$db = new PDO('mysql:host=' . host . ';dbname=' . database . ';charset=utf8', username, password);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$categories = $db->query('SELECT * FROM category');
$categories = $categories->fetchAll(PDO::FETCH_OBJ);

$subcategories = $db->query('SELECT * FROM subcategory');
$subcategories = $subcategories->fetchAll(PDO::FETCH_OBJ);

$tools = $db->query('SELECT * FROM tools');
$tools = $tools->fetchAll(PDO::FETCH_OBJ);

echo json_encode([
    'categories' => $categories,
    'subcategories' => $subcategories,
    'tools' => $tools
]);
