<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function index() {
        $products = DB::table('product')->get();

        return view('product.index')->with([
            'products' => $products
        ]);
    }

    public function create() {

        return view('product.create')->with([
        ]);
    }
    public function postCreate(Request $request) {
        $name = $request->input('txtname');
        $price = $request->input('txtprice');
        $description = $request->input('txtdescription');
        $image = $request->input('txtimage');
        DB::table('product')->insert([
            'name' => $name,
            'price' => $price,
            'description' => $description,
            'image' => $image,
            'status' => true
        ]);
        return redirect('product');
    }
}
