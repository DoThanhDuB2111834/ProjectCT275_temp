<?php

// require_once __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../bootstrap.php';

use App\Models\TaiKhoan;
use App\Models\SanPham;
use App\Models\HoaDon;

$sp = HoaDon::find(3)->SanPham;
$tk = HoaDon::all()->first()->TaiKhoan;

echo "$sp";