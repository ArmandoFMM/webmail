@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Dashboard</div>

                    <div class="panel-body">

                        <div class="row">
                            <div class="col-sm-3 col-md-2">
                                <a href="#" id="compor-msg" class="btn btn-danger btn-sm btn-block"
                                   role="button">COMPOR</a>
                                <hr/>
                                <ul class="nav nav-pills nav-stacked">
                                    <li class="active"><a href="#"><span
                                                    class="badge pull-right">{{count($mensagens)}}</span> Inbox </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="tab-content">
                            <div class="tab-pane active" id="inbox">
                                <div class="content-container clearfix">
                                    <div class="col-md-12">
                                        <h1 class="content-title">Inbox</h1>

                                        <input type="search" placeholder="Procurar E-Mail"
                                               class="form-control mail-search"/>

                                        <ul class="mail-list">
                                            @foreach($mensagens as $mensagem)
                                                <li>
                                                    <div class="col-md-12">
                                                        <a href="{{route('msg.show',['id'=>$mensagem->id])}}">
                                                            <span class="mail-sender">{{$mensagem->assunto}}</span>
                                                            <span class="mail-subject">{{$mensagem->user->email}}</span>
                                                            <span class="mail-message-preview">{{$mensagem->mensagem}}</span>
                                                        </a>
                                                    </div>
                                                </li>
                                                <div class="col-md-4 col-md-offset-4" style="margin-bottom: 20px;">
                                                    <a class="btn btn-primary reply-msg"
                                                       data-email="{{$mensagem->user->email}}"
                                                       data-assunto="{{$mensagem->assunto}}"><span
                                                                class="glyphicon glyphicon-circle-arrow-up"></span>
                                                        Reply</a>
                                                </div>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
