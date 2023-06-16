<?php

namespace App\Services;

use App\Imports\ProductImport;
use App\Models\Product;
use Maatwebsite\Excel\Facades\Excel;

class ProductService
{

    public function getProductList()
    {
        $result = Product::get();

        return $result;
    }

    public function productImport()
    {
        $result = Excel::import(new ProductImport, request()->file('file'));

        return $result;
    }
}