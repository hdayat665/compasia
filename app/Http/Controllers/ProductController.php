<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Services\ProductService;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function list()
    {
        $ps = new ProductService;

        $data['products'] = $ps->getProductList();

        return response()->json($data);
    }

    public function uploadProductExcel(Request $r)
    {
        $ps = new ProductService;

        $data = $ps->productImport($r);

        return response()->json($data);
    }
}