@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">List Post</h4>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Title</th>
                                <th>Author</th>
                                <th>Hình ảnh</th>
                                <th>Slug</th>
                            </tr>
                        </thead>
                        @foreach($posts as $post)
                        <tr>
                            <td>{{$post->post_id}}</td>
                            <td>{{$post->post_name}}</td>
                            <td>{{$post->authorId}}</td>
                            <td>
                                <img src="{{$post->post_image}}" alt="Image" class="img-thumbnail">
                            </td>
                            <td>{{$post->post_slug}}</td>                              
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
