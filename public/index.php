<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

require_once __DIR__ . '/../bootstrap.php';

define('APPNAME', 'My Phonebook');

session_start();

$router = new \Bramus\Router\Router();

//login và logout
$router->get('/login', '\App\Controllers\Auth\LoginController@create');
$router->post('/login', '\App\Controllers\Auth\LoginController@store');
$router->post('/logout', '\App\Controllers\Auth\LoginController@destroy');

// Admin thêm tài khoản mới cho nhân viên
$router->get('/AddAccount', '\App\Controllers\Auth\AddNewAccountController@create');

$router->get('/home', '\App\Controllers\HomeController@index');
$router->get('/', '\App\Controllers\HomeController@index');

$router->set404('\App\Controllers\Controller@sendNotFound');

$router->run();