@extends('layouts.app')

@section('titulo')
    {{$mensagem->assunto}}
@stop

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{$mensagem->assunto}}</h3>
                        <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                    </div>
                    <div class="panel-body">
                        {{$mensagem->mensagem}}
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop