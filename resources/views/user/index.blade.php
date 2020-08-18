@extends('layout.master')

@push('plugin-styles')
@endpush

@section('content')

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">User List</h4>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Full Name</th>
                                <th>Phone Number</th>
                                <th>Email</th>
                                <th>Registed At</th>
                                <th>Role</th>
                                <th>Profile</th>
                            </tr>
                        </thead>
                        @foreach($users as $user)
                        <tr>
                            <td>{{$user->id}}</td>
                            <td>{{$user->fullName}}</td>
                            <td>{{$user->mobile}}</td>
                            <td>{{$user->email}}</td>
                            <td>{{$user->registeredAt}}</td>
                            <@php
                                if ($user->role_id == 1){
                                    echo '<td class="text-success"> Admin </td>';
                                } else {
                                    echo '<td class="text-success"> Author </td>';
                                }
                            @endphp
                            <td>
                                <img src="{{$user->profile}}" alt="Image" class="img-thumbnail">
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
