<?php 
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

require_once __DIR__ . '/../bootstrap.php';

use App\Models\HoaDon;
use App\Models\TaiKhoan as tk;
use App\Models\SanPham;
use Illuminate\Support\Js;
// $hd5 = new HoaDon(['ghichu' => 'Hóa đơn 5', 'tongtien' => 50000000]);
// $hd6 = new HoaDon(['ghichu' => 'Hóa đơn 6', 'tongtien' => 60000000]);

// $tk1 = tk::find(1);

// $tk1->HoaDon()->saveMany([$hd6]);

// $hd5 = HoaDon::find(5);
// $sp1 = SanPham::find(1);
// $sp2 = SanPham::find(2);
// $sp3 = SanPham::find(3);
// $hd5->SanPham()->detach($sp2);
$data = json_encode(SanPham::where('tensp', 'like', '%s%')->get()->toArray());
// foreach ($data as $item) {
//     echo "$item";
// }

echo "$data";
// foreach ($data as $item) {
//     echo "$item";
// }