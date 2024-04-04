<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

require_once __DIR__ . '/../bootstrap.php';

define('APPNAME', 'Caffee shop');

session_start();

$router = new \Bramus\Router\Router();

// //login và logout
$router->get('/login', '\App\Controllers\Auth\LoginController@create');
$router->post('/login', '\App\Controllers\Auth\LoginController@store');
$router->post('/logout', '\App\Controllers\Auth\LoginController@destroy');

// Admin thêm tài khoản mới cho nhân viên
$router->get('/AddAccount', '\App\Controllers\Auth\AddNewAccountController@create');

$router->get('/TongQuan', '\App\Controllers\TongQuanController@index');
$router->get('/', '\App\Controllers\TongQuanController@index');


// Trang thu ngan
$router->get('/thuNganPage', '\App\Controllers\ThuNganController@index');
$router->post('/thuNganPage', '\App\Controllers\ThuNganController@store');
$router->get('/thucDon/img/([a-zA-Z0-9_-]+)', '\App\Controllers\imgController@getImgMon');
$router->get('/DSMon/([^/]+)', '\App\Controllers\ThuNganController@getList');
$router->get('/DSMon', '\App\Controllers\ThuNganController@getAllMon');
// 404
$router->set404('\App\Controllers\Controller@sendNotFound');

$router->run();