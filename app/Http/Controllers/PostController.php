<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    public function index() {
        $posts = DB::table('post')->get();

        return view('post.index')->with([
            'posts' => $posts
        ]);
    }

    public function create() {
        $categories = DB::table('category')->get();
        return view('post.create')->with(['categories'=>$categories]);
    }
    public function postCreate(Request $request) {
        $title = $request->input('txtTitle');
        $authorId = $request->input('txtAuthorId');
        $category = $request->input('txtCategory');
        $slug = $request->input('txtSlug');
        $image = $request->input('txtImage');
        $content = $request->input(('txtContent'));
        DB::table('post')->insert([
            'post_name' => $title,
            'authorId' => $authorId,
            'post_slug' => $slug,
            'post_image' => $image,
            'post_content' => $content
        ]);
        return redirect('post');
    }
}
