<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function index() {
        $users = DB::table('user')->get();

        return view('user.index')->with([
            'users' => $users
        ]);
    }
    //Create New User
    public function create() {
        $roles = DB::table('role')->get();
        return view('user.create')->with(['roles'=>$roles]);
    }
    public function postCreate(Request $request) {
        $name = $request->input('txtFullname');
        $fullname = $request->input('txtFullname');
        $mobile = $request->input('txtMobile');
        $email = $request->input('txtEmail');
        $role_id = $request->input('txtRole');
        $profile = $request->input('txtimage');
        DB::table('user')->insert([
            'name' => $name,
            'fullName' => $fullname,
            'mobile' => $mobile,
            'email' => $email,
            'role_id' => $role_id,
            'profile' => $profile
        ]);
        return redirect() -> action('UserController@index');
    }   
}
