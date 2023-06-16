<?php

namespace App\Imports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class ProductImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        // remove header
        $rows->shift();

        foreach ($rows as $row) {
            $productStatus = $row[5];
            $productId = $row[0];

            if ($productStatus === 'Sold') {
                // Update quantity for sold products
                Product::where('product_id', $productId)
                    ->decrement('quantity', 1);
            } elseif ($productStatus === 'Buy') {
                // Update quantity for bought products
                Product::where('product_id', $productId)
                    ->increment('quantity', 1);
            }
        }

        // dd($data);

        $data = [
            'msg' => 'success'
        ];

        return $data;
    }
}