@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form action="{{url('user/postCreate')}}" method="POST">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="">Full Name: </label>
                        <input type="text" class="form-control" name="txtFullName" placeholder="Full name of user">
                    </div>
                    <div class="form-group">
                        <label for="">Phone Number :</label>
                        <input type="text" class="form-control" name="txtMobile" placeholder="Mobile Phone">
                    </div>
                    <div class="form-group">
                        <label for="">Email :</label>
                        <input type="text" class="form-control" name="txtEmail" placeholder="Email"/>
                    </div>
                    <div class="form-group">
                        <label for="">Role :</label>
                        <select class="form-control" name="txtRole">
                            @foreach ($roles as $role)
                                <option>
                                    {{ $role->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Profile :</label>
                        <input type="text" class="form-control" name="txtProfile" placeholder="Profile of user">
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
