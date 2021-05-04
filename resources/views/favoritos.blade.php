@extends('layout')
@section('titulo')
    Favoritos
@endsection
@section('contenido')
    
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/home-bg.jpg'); height:20vh;">
          <div class="site-heading">
          </div>
  </header>
  <!-- Main Content -->
  <h1>FAVORITOS</h1>
<hr>
@if($favoritos==null)
<br>
<br>
<br>
<br>
<br>
<h2>DEBES INICIAR SESION PARA VER TUS FAVORITOS</h2>
<br>
<br>
<br>
<br>
<br>
<br>
@elseif(empty($favoritos))
<h2>Aún no has añadido ninguna noticia a FAVORITOS</h2>
<a href="/">Volver a inicio</a>
@else
    @if (\Session::has('error'))
        <div class="alert alert-danger">
            <ul>
                <li>{!! \Session::get('error') !!}</li>
            </ul>
        </div>
    @endif

      @foreach ($favoritos as $key=>$item)
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
                <div class="col-md-2" id="eliminar-favoritos" style="display: grid;">
                      <form action="{{url("favoritos/".$item['id'])}}" method="POST" style="display: flex;">
                      @csrf
                      @method('DELETE')
                          <input type="hidden" name="_token" value="{{ csrf_token() }}">
                          <input type="hidden" name="id_item" value="{{$item['id']}}">
                          <input class="btn btn-danger" type="submit" value="Eliminar favorito" style="align-self: center;">
                      </form>
                </div>

              </div>
          </div>
              <hr>
              @endforeach
        @endif
@endsection