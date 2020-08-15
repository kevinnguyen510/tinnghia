<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    public function index(){
       $cate = DB::table('product-category') ->get();
        return view('product-category.index')->with(['productCategory'=>$cate]);
    }
    //Create Book Categories
    public function create() {
        return view('product-category.create')->with([]);
    }
    public function postCreate(Request $request) {
        $name = $request->input('txtname');
        $description = $request->input('txtdescription');
        $image = $request->input('txtimage');
        DB::table('product-category')->insert([
            'name' => $name,
            'description' => $description,
            'image' => $image
        ]);
        return redirect() -> action('ProductCategoryController@index');
    }

}
