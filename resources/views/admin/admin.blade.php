@extends('admin.admin-layout')
@section('titulo')
    Panel de Control
@endsection
@section('contenido')

<h1>{{ Auth::user()->name }}</h1>
@endsection