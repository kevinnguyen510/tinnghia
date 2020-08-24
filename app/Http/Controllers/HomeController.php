<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /** $categories = DB::table('category')->where('published','0')->orderby('category_id','desc')->get();  
       * $posts = DB::table('post')->where('published','0')->orderby('post_id','desc')->limit(6)->get(); 

    	*return view('pages.home')->with('category',$cate_product)->with('brand',$brand_product)->with('all_product',$all_product);
       */
        return view('home');
    }
    //Login
    public function login()
    {
        return view('pages.user-pages.login');
    }
    public function checkLogin(Request $request){
        $email = $request ->input('txtEmail');
        $password = $request ->input('txtPassword');
        $users =DB::table('user') ->where('email',$email) ->first();
        if($users != null && $users->passwordHash == $password){
            if($users->role_id == 1){
                return redirect() ->action("UserController@index");
            }else{
                return redirect() ->action('PostController@index');
            }
        }
    }
}
