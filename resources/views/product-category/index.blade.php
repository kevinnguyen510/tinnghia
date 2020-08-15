@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')
<div class="row">
<div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Danh sách danh mục sản phẩm</h4>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Image</th>
                        </tr>
                    </thead>
                    @foreach($productCategory as $cate)
                    <tr>
                        <td>{{$cate->id}}</td>
                        <td>{{$cate->name}}</td>
                        <td>{{$cate->description}}</td>
                        <td>
                            <img src="{{$cate->image}}" alt="Image" class="img-thumbnail">
                        </td>                    
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
</div>
</div>
@endsection