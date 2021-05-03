
@extends('layout')
@section('titulo')
Noticia:
@endsection

@section('contenido')
  <!-- Page Header -->
    
  <header class="masthead" style="background-image: url('../img/programacion.jpg')">
    <div class="overlay">
      
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">
          <h1>{{$item['title']}}</h1>
            <h2 class="subheading">{{$item['type']}}</h2>
            <span class="meta">Publicado
            <a href="#">{{ \Carbon\Carbon::parse($item['time'])->diffForHumans() }}</a></span>
          </div>
        </div>
      </div>
    </div>
  </header>
<hr>
  <!-- Post Content -->
  <article>
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <h1>LINK A LA NOTICIA</h1>
          <p class="text-justify">
          <a href="{{$item['url']}}">
          {{$item['url']}}
          </a>
            </p>
        </div>
      </div>
    </div>
  </article>
  <hr>
  <a href="{{url('/')}}">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 float-left">
          <div class="post-heading">
            <h2 class="subheading"><i class="fas fa-arrow-circle-left"></i> VOLVER AL INICIO</h2>
          </div>
        </div>
      </div>
    </div>
  </a>

  <hr>
  @endsection