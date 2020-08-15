@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form action="{{url('product-category/postCreate')}}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="">Tên </label>
                        <input type="text" class="form-control" name="txtname" placeholder="Tên danh mục sản phẩm">
                    </div>
                    <div class="form-group">
                        <label for="">Miêu tả </label>
                        <textarea type="text" class="form-control" name="txtdescription" placeholder="Miêu tả danh mục sản phẩm"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="">Hỉnh ảnh</label>
                        <input type="text" class="form-control" name="txtimage" placeholder="Hình ảnh danh mục sản phẩm">
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
