@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form action="{{url('post/postCreate')}}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="">Title</label>
                        <input type="text" class="form-control" name="txtTitle" placeholder="Tên sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="">Author Id</label>
                        <input type="text" class="form-control" name="txtAuthorId" placeholder="Giá sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="">Category Post :</label>
                        <select class="form-control" name="txtCategory">
                            @foreach ($categories as $category)
                                <option value="{{ $category->category_id }}">
                                    {{ $category->category_name}}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Slug</label>
                        <input type="text" class="form-control" name="txtSlug" placeholder="Miêu tả sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="">Image</label>
                        <input type="text" class="form-control" name="txtImage" placeholder="Hình ảnh sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="">Content</label>
                        <textarea type="text" class="form-control" name="txtContent" placeholder="Miêu tả sản phẩm"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-success" name="txtsubmit">
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

@endsection
