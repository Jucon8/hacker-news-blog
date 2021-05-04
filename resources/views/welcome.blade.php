

@extends('layout')
@section('titulo')
    Desafío
@endsection
@section('contenido')
    
  <!-- Page Header -->
<header class="masthead" style="background-image: url('img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Hacker News</h1>
            <span class="subheading">Últimas noticias de la API</span>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- Main Content -->
<hr>
@if (\Session::has('success'))
    <div class="alert alert-success">
        <ul>
            <li>{!! \Session::get('success') !!}</li>
        </ul>
    </div>
@endif
@if (\Session::has('warning'))
    <div class="alert alert-warning">
        <ul>
            <li>{!! \Session::get('warning') !!}</li>
        </ul>
    </div>
@endif

@foreach ($item_data as $key=>$item)
<div class="card mb-3">
  <div class="row no-gutters">
    <div class="col-md-4" style="overflow: hidden">
    <svg class="bd-placeholder-img card-img-top" width="50%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Hacker News</title><rect width="50%" height="100%" fill="#55595c"/><text x="20%" y="50%" fill="#eceeef" dy=".3em" font-size="55">{{$key+1}}</text></svg>
      </div>
          <div class="col-md-6" id="textoNoticia">
            <div class="post-preview">
        <a href=" {{ route('noticia.show', $item['id']) }} ">
        
            <h2 class="post-title">
              {{$item['title']}}
            </h2>
            </a>

            @if(!empty($item['url']))
            <a href=" {{ $item['url'] }} ">
            <h4 class="post-subtitle">
                  {{$item['url']}}
            </h4>
            @endif
 
          <p class="post-meta"> Autor:
            <a href="#">{{$item['by']}}</a>
            <br>
          {{ \Carbon\Carbon::parse($item['time'])->diffForHumans() }}
          </p>
            </div>
          </div>

          <!-- FAVORITOS -->
          <div class="col-md-2" id="boton-favoritos" style="display: grid;">
          <form action="{{action('FavoritosController@store')}}" method="POST" style="display: flex;">
              <input type="hidden" name="_token" value="{{ csrf_token() }}">
              <input type="hidden" name="id_item" value="{{$item['id']}}">
              <input type="hidden" name="title_item" value="{{$item['title']}}">
              @if(!empty($item['url']))
              <input type="hidden" name="url_item" value="{{$item['url']}}">
              @else
              <input type="hidden" name="url_item" value="SIN URL">
              @endif
              <input class="btn btn-success" type="submit" value="Añadir a favoritos" style="align-self: center;">
          </form>
        </div>
      </div>
    </div>
        <hr>
        @endforeach
@endsection