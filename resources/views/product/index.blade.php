@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Danh sách sản phẩm</h4>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Tên</th>
                                <th>Giá sản phẩm</th>
                                <th>Hình ảnh</th>
                                <th>Số lượng</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        @foreach($products as $product)
                        <tr>
                            <td>{{$product->id}}</td>
                            <td>{{$product->name}}</td>
                            <td>{{$product->price}}</td>
                            <td>
                                <img src="{{$product->image}}" alt="Image" class="img-thumbnail">
                            </td>
                            <td>
                                {{$product->quality}}
                            </td>
                                <@php
                                if ($product->status == 1){
                                    echo '<td class="text-success"> Đang sử dụng </td>';
                                } else {
                                    echo '<td class="text-danger"> Đã khóa </td>';
                                }
                            @endphp

                            {{-- <td>{{$product->status}}</td> --}}

                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
